// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'background_image.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rcc Column Design'),
        backgroundColor: Colors.black45,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BackgroundImage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/design');
                },
                child: const Text(
                  'Design',
                  style: TextStyle(fontSize: 25),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30,
                ),
                color: Colors.purpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(width: 50),
              RaisedButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  Navigator.pushNamed(context, '/theory');
                },
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30,
                ),
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Theory',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
