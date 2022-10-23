// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TheoryPage extends StatefulWidget {
  const TheoryPage({Key? key}) : super(key: key);

  @override
  _TheoryPageState createState() => _TheoryPageState();
}

class _TheoryPageState extends State<TheoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theory of Column'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Row(
                      children: [
                        // ignore: deprecated_member_use
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/IS456');
                          },
                          child: const Text(
                            'IRC 456:2000',
                            style: TextStyle(fontSize: 15),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 20,
                          ),
                          color: Colors.purple[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(width: 50),
                        Flexible(
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onPressed: () {
                              Navigator.pushNamed(context, '/IS1893');
                            },
                            padding: const EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20,
                            ),
                            color: Colors.grey[400],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              'IS 1893:2002',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2.0,
              ),
              SizedBox(
                height: 10,
              ),

              //#0

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(100),
                  textStyle: TextStyle(fontSize: 38),
                  primary: Colors.blue,
                  side: BorderSide(width: 3, color: Colors.purple),
                ),
                child: Text("SP 16 :"),
                onPressed: () {
                  Navigator.pushNamed(context, '/sp16');
                },
              ),
              SizedBox(
                height: 10,
              ),
              // #1

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(100),
                  textStyle: TextStyle(fontSize: 38),
                  primary: Colors.blue,
                  side: BorderSide(width: 3, color: Colors.purple),
                ),
                child: Text.rich(
                  TextSpan(text: 'Introduction', children: const <InlineSpan>[
                    TextSpan(
                        text:
                            '\n Column is a compressive member used to transfer load ....',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ]),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/introduction');
                },
              ),
              SizedBox(
                height: 10,
              ),

              // #2

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(100),
                  textStyle: TextStyle(fontSize: 38),
                  primary: Colors.blue,
                  side: BorderSide(width: 3, color: Colors.purple),
                ),
                child: Text.rich(
                  TextSpan(text: 'Concept', children: const <InlineSpan>[
                    TextSpan(
                        text: '\n  Axis, Loading and Classification of column',
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ]),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/concept');
                },
              ),
              SizedBox(
                height: 10,
              ),

              //#3

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(100),
                  textStyle: TextStyle(fontSize: 38),
                  primary: Colors.blue,
                  side: BorderSide(width: 3, color: Colors.purple),
                ),
                child: Text.rich(
                  TextSpan(
                      text: 'Detailing Requirement',
                      style: TextStyle(fontSize: 25),
                      children: const <InlineSpan>[
                        TextSpan(
                            text:
                                '\n Slenderness Limit and Minimum Eccentricities ',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                      ]),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/detailing');
                },
              ),
              SizedBox(
                height: 10,
              ),

              //#4

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(100),
                  textStyle: TextStyle(fontSize: 38),
                  primary: Colors.blue,
                  side: BorderSide(width: 3, color: Colors.purple),
                ),
                child: Text.rich(
                  TextSpan(
                      text: 'Longitudinal Bars Detailing',
                      style: TextStyle(fontSize: 25),
                      children: const <InlineSpan>[
                        TextSpan(
                            text:
                                '\n Minimum and Maximum (Longitudinal reinforcement, diameter,spacing and cover).',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                      ]),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/longitudinal');
                },
              ),
              SizedBox(
                height: 10,
              ),

              //#5

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(100),
                  textStyle: TextStyle(fontSize: 38),
                  primary: Colors.blue,
                  side: BorderSide(width: 3, color: Colors.purple),
                ),
                child: Text.rich(
                  TextSpan(
                      text: 'Transverse Bars Detailing',
                      style: TextStyle(fontSize: 25),
                      children: const <InlineSpan>[
                        TextSpan(
                            text:
                                '\n Minimum and Maximum (Transverse reinforcement, diameter,spacing and cover).',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                      ]),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/transverse');
                },
              ),
              SizedBox(
                height: 10,
              ),

              //#6

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(100),
                  textStyle: TextStyle(fontSize: 38),
                  primary: Colors.blue,
                  side: BorderSide(width: 3, color: Colors.purple),
                ),
                child: Text.rich(
                  TextSpan(
                      text: 'Design for Axial Loading',
                      style: TextStyle(fontSize: 25),
                      children: const <InlineSpan>[
                        TextSpan(
                            text:
                                '\n Process of designing short column subjected to axial load only.',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                      ]),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/axial_load');
                },
              ),
              SizedBox(
                height: 10,
              ),

              //#7

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(100),
                  textStyle: TextStyle(fontSize: 38),
                  primary: Colors.blue,
                  side: BorderSide(width: 3, color: Colors.purple),
                ),
                child: Text.rich(
                  TextSpan(
                      text: 'Design for Axial Load with Uni-axial Bending',
                      style: TextStyle(fontSize: 25),
                      children: const <InlineSpan>[
                        TextSpan(
                            text:
                                '\n Process of Designing a short column subjected to axial load and uni-axial bending moment).',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                      ]),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/uni_axial_load');
                },
              ),
              SizedBox(
                height: 10,
              ),

              //#8

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(100),
                  textStyle: TextStyle(fontSize: 38),
                  primary: Colors.blue,
                  side: BorderSide(width: 3, color: Colors.purple),
                ),
                child: Text.rich(
                  TextSpan(
                      text: 'Design for Axial Load with Bi-axial Bending',
                      style: TextStyle(fontSize: 25),
                      children: const <InlineSpan>[
                        TextSpan(
                            text:
                                '\n Process of Designing a short column subjected to axial load and bi-axial bending moment).',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                      ]),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/bi_axial_load');
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
