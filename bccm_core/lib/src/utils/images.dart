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

  // Drop the sizing the caller of the API already put on the url. Keeping it means asking for
  // both dimensions at once, and `fit=crop` then reshapes the image instead of just resizing it.
  var newQueryParams = Uri.splitQueryString(originalUri.query)
    ..remove('w')
    ..remove('h')
    ..remove('fit')
    ..remove('crop');
  if (targetWidth != null) newQueryParams['w'] = targetWidth.toString();
  if (targetHeight != null) newQueryParams['h'] = targetHeight.toString();
  newQueryParams['fit'] = 'crop';

  final cropModeString = _imageCropModeQueryParam[cropMode];
  if (cropModeString != null) newQueryParams['crop'] = cropModeString;

  return Uri(
      fragment: originalUri.hasFragment ? originalUri.fragment : null,
      host: originalUri.host,
      path: originalUri.path,
      port: originalUri.port,
      scheme: originalUri.scheme,
      queryParameters: newQueryParams);
}

/// A network image that fades in, sized to the box it is given.
///
/// The target height drives two separate things:
///  - [getImageUri], so the CDN serves an appropriately sized asset instead of
///    the full-resolution original. Without this a 48px-tall thumbnail
///    downloads the same bytes as a full-screen hero image.
///  - `cacheHeight`, so the decoded bitmap doesn't blow up the image cache.
///
/// Falls back to the untouched [url] when the box height is unbounded or
/// collapsed (nothing sane to size by), or when [url] can't be parsed.
Widget simpleFadeInImage({
  required String url,
  Duration? duration,
  ImageCropMode cropMode = ImageCropMode.faces,
}) =>
    LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final scaledHeight =
            maxHeight.isFinite ? (maxHeight * MediaQuery.devicePixelRatioOf(context)).round() : 0;
        final targetHeight = scaledHeight > 0 ? scaledHeight : null;
        final resolvedUrl = targetHeight != null
            ? getImageUri(url, height: targetHeight, cropMode: cropMode)?.toString() ?? url
            : url;
        return FadeInImage(
          fit: BoxFit.cover,
          placeholder: MemoryImage(kTransparentImage),
          image: networkImageWithRetryAndResize(
            imageUrl: resolvedUrl,
            cacheHeight: targetHeight,
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
