import 'package:bccm_core/bccm_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:extended_image/extended_image.dart';

const Map<ImageCropMode, String> _imageCropModeQueryParam = {
  ImageCropMode.faces: 'faces',
  ImageCropMode.center: 'center',
};

enum ImageCropMode {
  faces,
  center,
}

final imageWidths = [16, 240, 500, 680, 1024, 1600, 1920];
final imageHeights = [16, 240, 500, 680, 1024, 1600, 1920];

Uri? getImageUri(String image, {int? width, int? height, ImageCropMode cropMode = ImageCropMode.faces}) {
  assert(
    width == null || height == null,
    '''Either width or height needs to be null. Use the dimension that changes least.
    Having one dimension plays better with web and desktop, where the screen can be resized a lot.''',
  );
  final originalUri = Uri.tryParse(image);
  if (originalUri == null) {
    return null;
  }
  int? targetWidth;
  if (width != null) {
    targetWidth = imageWidths.firstWhere((w) => w >= width, orElse: () => imageWidths.last);
  }
  int? targetHeight;
  if (height != null) {
    targetHeight = imageHeights.firstWhere((h) => h >= height, orElse: () => imageHeights.last);
  }

  var newQueryParams = Uri.splitQueryString(originalUri.query);
  if (targetWidth != null) newQueryParams['w'] = targetWidth.toString();
  if (targetHeight != null) newQueryParams['h'] = targetHeight.toString();
  newQueryParams['fit'] = 'crop';

  final cropModeString = _imageCropModeQueryParam[cropMode];
  if (cropModeString != null) newQueryParams['crop'] = cropModeString;

  return Uri(
      fragment: originalUri.fragment,
      host: originalUri.host,
      path: originalUri.path,
      port: originalUri.port,
      scheme: originalUri.scheme,
      queryParameters: newQueryParams);
}

Widget simpleFadeInImage({required String url, Duration? duration}) => LayoutBuilder(
      builder: (context, constraints) {
        return FadeInImage(
          fit: BoxFit.cover,
          placeholder: MemoryImage(kTransparentImage),
          image: networkImageWithRetryAndResize(
            imageUrl: url,
            cacheHeight: (constraints.maxHeight * MediaQuery.devicePixelRatioOf(context)).round(),
          ),
          imageErrorBuilder: imageErrorBuilder,
          fadeInDuration: duration ?? const Duration(milliseconds: 400),
        );
      },
    );

ImageProvider<Object> networkImageWithRetryAndResize({
  required String imageUrl,
  int? cacheHeight,
}) {
  return ResizeImage.resizeIfNeeded(
    null,
    cacheHeight,
    ExtendedNetworkImageProvider(
      imageUrl,
      headers: const {'Keep-Alive': 'timeout=20, max=5'},
      retries: 3,
      timeRetry: const Duration(milliseconds: 100),
    ),
  );
}

Widget imageErrorBuilder(
  BuildContext context,
  Object error,
  StackTrace? stackTrace, {
  Widget? child,
}) {
  return HookBuilder(builder: (context) {
    useEffect(() {
      FlutterError.reportError(
        FlutterErrorDetails(
          exception: Exception(['Image load failed', error]),
          stack: stackTrace != StackTrace.empty ? stackTrace : StackTrace.current,
        ),
      );
      return null;
    }, []);
    return child ?? const SizedBox.shrink();
  });
}
