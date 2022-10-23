// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class IS1893 extends StatefulWidget {
  const IS1893({Key? key}) : super(key: key);

  @override
  _IS1893State createState() => _IS1893State();
}

class _IS1893State extends State<IS1893> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset ('pdf/IS1893.2002.pdf'),
    );
  }
}



 

      // SfPdfViewer.asset('pdf/IS1893.2002.pdf'),