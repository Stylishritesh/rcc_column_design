
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/rccimg2.jpg',
      fit: BoxFit.cover,
      color: Colors.black45.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    );
  }
}
