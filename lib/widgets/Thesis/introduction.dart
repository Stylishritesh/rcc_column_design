import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: const Text.rich(TextSpan(text: 'Introduction')),
    );
  }
}
