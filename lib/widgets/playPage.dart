// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graph of Seismic Design'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              textfield_1(),
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                height: 10,
              ),
              textfield_3(),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/graph');
                },
                child: const Text(
                  'Run',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textfield_1() => const TextField(
      decoration: InputDecoration(
        labelText: 'Earthquake Load',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );

Widget textfield_3() => const TextField(
      decoration: InputDecoration(
        labelText: 'Axial Load',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
