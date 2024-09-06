import 'package:flutter/services.dart' show ByteData, Uint8List, rootBundle;
import 'dart:html' as html;

Future<void> downloadCV()async{

  final ByteData bytes = await rootBundle.load('assets/cv/Prajwal.CV.pdf');
  final Uint8List list = bytes.buffer.asUint8List();

  final blob = html.Blob([list]);

  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute('download', 'Prajwal Abbigeri .pdf')
    ..click();

  html.Url.revokeObjectUrl(url);
}