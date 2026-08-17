import 'package:bccm_core/bccm_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

const _url = 'https://img.bcc.media/some-episode.jpg';

/// Pulls the ExtendedNetworkImageProvider url out of whatever
/// [simpleFadeInImage] built, so we can assert on what the CDN is asked for.
String _requestedUrl(WidgetTester tester) {
  final fadeInImage = tester.widget<FadeInImage>(find.byType(FadeInImage));
  final provider = fadeInImage.image;
  final inner = provider is ResizeImage ? provider.imageProvider : provider;
  return (inner as dynamic).url as String;
}

int? _cacheHeight(WidgetTester tester) {
  final fadeInImage = tester.widget<FadeInImage>(find.byType(FadeInImage));
  final provider = fadeInImage.image;
  return provider is ResizeImage ? provider.height : null;
}

/// These tests only inspect which url the ImageProvider was configured with.
/// The fetch itself always fails against flutter_test's stub HttpClient, and
/// imageErrorBuilder reports that through FlutterError — asynchronously, so it
/// otherwise lands on whichever test happens to be running next.
///
/// This has to run inside the test body: the binding installs its own
/// FlutterError.onError when the test starts, which would clobber a setUp().
void _ignoreImageLoadFailures() {
  final previous = FlutterError.onError;
  FlutterError.onError = (details) {
    if (details.exception.toString().contains('Image load failed')) return;
    previous?.call(details);
  };
}

Future<void> _pump(WidgetTester tester, Widget child) {
  _ignoreImageLoadFailures();
  return tester.pumpWidget(
    MediaQuery(
      data: const MediaQueryData(devicePixelRatio: 3.0),
      child: Directionality(
        textDirection: TextDirection.ltr,
        // Align loosens the tight surface constraints pumpWidget hands down,
        // so the SizedBoxes below actually get the height they ask for.
        child: Align(alignment: Alignment.topLeft, child: child),
      ),
    ),
  );
}

void main() {
  testWidgets('requests a CDN-bucketed height for a bounded box', (tester) async {
    // 48 logical px at dpr 3 = 144 physical, which lands in the 240 bucket.
    await _pump(tester, SizedBox(height: 48, child: simpleFadeInImage(url: _url)));

    final uri = Uri.parse(_requestedUrl(tester));
    expect(uri.queryParameters['h'], '240');
    expect(uri.queryParameters['fit'], 'crop');
    expect(uri.queryParameters['crop'], 'faces');
    expect(uri.path, '/some-episode.jpg');
    expect(_cacheHeight(tester), 144);
  });

  testWidgets('a taller box asks for a larger bucket', (tester) async {
    // 200 logical px at dpr 3 = 600 physical -> 680 bucket.
    await _pump(tester, SizedBox(height: 200, child: simpleFadeInImage(url: _url)));

    expect(Uri.parse(_requestedUrl(tester)).queryParameters['h'], '680');
    expect(_cacheHeight(tester), 600);
  });

  testWidgets('cropMode is forwarded to the CDN', (tester) async {
    await _pump(
      tester,
      SizedBox(
        height: 48,
        child: simpleFadeInImage(url: _url, cropMode: ImageCropMode.center),
      ),
    );

    expect(Uri.parse(_requestedUrl(tester)).queryParameters['crop'], 'center');
  });

  testWidgets('leaves the url untouched when the height is unbounded', (tester) async {
    await _pump(tester, ListView(children: [simpleFadeInImage(url: _url)]));

    expect(_requestedUrl(tester), _url);
    expect(_cacheHeight(tester), isNull);
  });

  testWidgets('leaves the url untouched when the box is collapsed', (tester) async {
    await _pump(tester, SizedBox(height: 0, child: simpleFadeInImage(url: _url)));

    expect(_requestedUrl(tester), _url);
    expect(_cacheHeight(tester), isNull);
  });

  testWidgets('preserves pre-existing query params on the source url', (tester) async {
    await _pump(tester, SizedBox(height: 48, child: simpleFadeInImage(url: '$_url?v=2')));

    final uri = Uri.parse(_requestedUrl(tester));
    expect(uri.queryParameters['v'], '2');
    expect(uri.queryParameters['h'], '240');
  });
}
