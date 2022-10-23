import 'package:flutter/material.dart';

class Concept extends StatefulWidget {
  const Concept({Key? key}) : super(key: key);

  @override
  State<Concept> createState() => _ConceptState();
}

class _ConceptState extends State<Concept> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: const Text.rich(TextSpan(text: 'Concept')),
    );
  }
}
