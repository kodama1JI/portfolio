import 'dart:io';

import 'package:flutter/services.dart';

Future<void> downloadResume(String assetPath, String fileName) async {
  final data = await rootBundle.load(assetPath);
  final file = File(
    '${Directory.systemTemp.path}${Platform.pathSeparator}$fileName',
  );
  await file.writeAsBytes(data.buffer.asUint8List(), flush: true);
}
