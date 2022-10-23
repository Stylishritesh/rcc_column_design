import 'package:flutter/material.dart';


class Detailing extends StatefulWidget {
  const Detailing({ Key? key }) : super(key: key);

  @override
  State<Detailing> createState() => _DetailingState();
}

class _DetailingState extends State<Detailing> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: const Text.rich(TextSpan(text: 'Detailing')),
    );
  }
}