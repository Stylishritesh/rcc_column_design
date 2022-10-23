import 'package:flutter/material.dart';

class BiAxial extends StatefulWidget {
  const BiAxial({Key? key}) : super(key: key);

  @override
  State<BiAxial> createState() => _BiAxialState();
}

class _BiAxialState extends State<BiAxial> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: const Text.rich(TextSpan(text: 'BiAxial')),
    );
  }
}
