import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

@immutable
class CallbacksPage extends StatefulWidget {
  const CallbacksPage({super.key});

  static const location = '/callbacks';

  @override
  State<CallbacksPage> createState() => _CallbacksPageState();
}

class _CallbacksPageState extends State<CallbacksPage> {
  GlobalKey globalKey = GlobalKey();
  Uint8List? _pngBytes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Callbacks')),
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () => setState(() => _pngBytes = null),
            child: const Text('reset'),
          ),
          Expanded(
            child: _pngBytes == null
                ? RepaintBoundary(
                    key: globalKey,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 100,
                          ),
                          TextButton(
                            onPressed: _capturePng,
                            child: const Text(
                              'Take screenshot',
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Image.memory(_pngBytes!),
          ),
        ],
      ),
    );
  }

  Future<void> _capturePng() async {
    final sw = Stopwatch()..start();
    final boundary =
        globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    debugPrint('#1 ${sw.elapsedMicroseconds} us');
    final image = await boundary.toImage();
    debugPrint('#2 ${sw.elapsedMicroseconds} us');
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    debugPrint('#3 ${sw.elapsedMicroseconds} us');
    final pngBytes = byteData!.buffer.asUint8List();
    debugPrint('#4 ${sw.elapsedMicroseconds} us');
    debugPrint('size: ${pngBytes.lengthInBytes}');
    setState(() {
      _pngBytes = pngBytes;
    });
  }
}
