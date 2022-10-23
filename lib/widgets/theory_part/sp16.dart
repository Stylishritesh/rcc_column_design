// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class IS456 extends StatefulWidget {
  const IS456({Key? key}) : super(key: key);

  @override
  _IS456State createState() => _IS456State();
}

class _IS456State extends State<IS456> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset('pdf/sp16'),
    );
  }
}
