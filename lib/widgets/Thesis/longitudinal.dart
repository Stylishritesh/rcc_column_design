import 'package:flutter/material.dart';

class Longitudinal extends StatefulWidget {
  const Longitudinal({Key? key}) : super(key: key);

  @override
  State<Longitudinal> createState() => _LongitudinalState();
}

class _LongitudinalState extends State<Longitudinal> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: const Text.rich(TextSpan(text: 'Longitudinal')),
    );
  }
}
