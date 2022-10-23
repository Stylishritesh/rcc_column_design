import 'package:flutter/material.dart';

class Transverse extends StatefulWidget {
  const Transverse({Key? key}) : super(key: key);

  @override
  State<Transverse> createState() => _TransverseState();
}

class _TransverseState extends State<Transverse> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: const Text.rich(TextSpan(text: 'Transverse')),
    );
  }
}
