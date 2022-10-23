import 'package:flutter/material.dart';

class UniAxial extends StatefulWidget {
  const UniAxial({Key? key}) : super(key: key);

  @override
  State<UniAxial> createState() => _UniAxialState();
}

class _UniAxialState extends State<UniAxial> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: const Text.rich(TextSpan(text: 'Uni axial')),
    );
  }
}
