import 'package:flutter/material.dart';
import 'package:rcc/widgets/calculate.dart';
import 'package:rcc/widgets/playPage.dart';
import 'package:rcc/widgets/theory_part/IS1893.dart';
import 'package:rcc/widgets/theory_part/IS456.dart';
import 'widgets/first_page.dart';
import 'widgets/design.dart';
import 'widgets/theorypage.dart';

import 'package:rcc/widgets/graph.dart';
import 'widgets/theory_part/IS456.dart';
import 'widgets/theory_part/IS1893.dart';

//importing theorypage line

import 'package:rcc/widgets/Thesis/axial_load.dart';
import 'package:rcc/widgets/Thesis/bi_axial_load.dart';
import 'package:rcc/widgets/Thesis/concept.dart';
import 'package:rcc/widgets/Thesis/detailing.dart';
import 'package:rcc/widgets/Thesis/introduction.dart';
import 'package:rcc/widgets/Thesis/longitudinal.dart';
import 'package:rcc/widgets/Thesis/transverse.dart';
import 'package:rcc/widgets/Thesis/uni_axial_load.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/design': (context) =>  Design(),
        '/IS456': (context) => const IS456(),
        '/IS1893': (context) => const IS1893(),
        '/theory': (context) => const TheoryPage(),
        '/playPage': (context) => const PlayPage(),
        '/graph': (context) => const GraphPage(),
        '/axial_load': (context) => const AxialLoad(),
        '/bi_axial_load': (context) => const BiAxial(),
        '/concept': (context) => const Concept(),
        '/detailing': (context) => const Detailing(),
        '/introduction': (context) => const Introduction(),
        '/longitudinal': (context) => const Longitudinal(),
        '/transverse': (context) => const Transverse(),
        '/uni_axial_load': (context) => const UniAxial(),
      },
      title: 'Rcc Column Design',
      home: const FirstPage(),
    ),
  );
}
