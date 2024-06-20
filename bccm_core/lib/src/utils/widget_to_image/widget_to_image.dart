import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Based on https://gist.github.com/AlexV525/612da609aae83cc572d6c051667bf66d
/// And https://github.com/flutter/flutter/issues/40064#issuecomment-620081426
///
/// Creates an image from the given widget by first spinning up a element and render tree,
/// then waiting for the given [wait] amount of time and then creating an image via a [RepaintBoundary].
///
/// The final image will be of size [imageSize] and the the widget will be layout, ... with the given [logicalSize].
Future<Uint8List?> createImageFromWidget({
  required FlutterView view,
  required Widget widget,
  Duration? wait,
  Size? logicalSize,
  Size? imageSize,
}) async {
  final RenderRepaintBoundary repaintBoundary = RenderRepaintBoundary();

  logicalSize ??= view.physicalSize / view.devicePixelRatio;
  imageSize ??= view.physicalSize;

  assert(logicalSize.aspectRatio == imageSize.aspectRatio);

  final RenderView renderView = RenderView(
    view: view,
    child: RenderPositionedBox(alignment: Alignment.center, child: repaintBoundary),
    configuration: ViewConfiguration(
      logicalConstraints: BoxConstraints.tight(logicalSize),
      devicePixelRatio: 1.0,
    ),
  );

  final PipelineOwner pipelineOwner = PipelineOwner();
  final BuildOwner buildOwner = BuildOwner(focusManager: FocusManager());

  pipelineOwner.rootNode = renderView;
  renderView.prepareInitialFrame();

  final RenderObjectToWidgetElement<RenderBox> rootElement = RenderObjectToWidgetAdapter<RenderBox>(
    container: repaintBoundary,
    child: Directionality(
      textDirection: TextDirection.ltr,
      child: MediaQuery(
        data: const MediaQueryData(),
        child: widget,
      ),
    ),
  ).attachToRenderTree(buildOwner);

  buildOwner.buildScope(rootElement);

  if (wait != null) {
    await Future.delayed(wait);
  }

  buildOwner.buildScope(rootElement);
  buildOwner.finalizeTree();

  pipelineOwner.flushLayout();
  pipelineOwner.flushCompositingBits();
  pipelineOwner.flushPaint();

  final ui.Image image = await repaintBoundary.toImage(pixelRatio: imageSize.width / logicalSize.width);
  final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  return byteData?.buffer.asUint8List();
}
