import 'package:flutter/material.dart';

class AxialLoad extends StatefulWidget {
  const AxialLoad({Key? key}) : super(key: key);

  @override
  State<AxialLoad> createState() => _AxialLoadState();
}

class _AxialLoadState extends State<AxialLoad> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: const Text.rich(TextSpan(text: 'Axial Load')),
    );
  }
}
