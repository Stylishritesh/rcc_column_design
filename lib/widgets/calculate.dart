// // ignore: unnecessary_import
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'grade.dart';
//
//
// class CalculatePage extends StatelessWidget {
//
//
// String Length_of_column , Height_of_column, Width_of_column, Axial_Load , GradeOfConcrete, GradeOfSteel;
//
//
// CalculatePage({Key? key, required this.Length_of_column,required this.Height_of_column,
//    required this.Width_of_column,required this.Axial_Load,required this.GradeOfConcrete,required this.GradeOfSteel}) : super(key: key);
//
// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Calculation Page'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text("Length of Column = $Length_of_column"),
//               Text("Width of Column = $Width_of_column"),
//               Text("Height of Column = $Height_of_column"),
//               Text("Axial Load applied on Column = $Axial_Load "),
//               Text("Grade of Concrete = $GradeOfConcrete"),
//               Text("Grade of Steel = $GradeOfSteel"),
//               const SizedBox(
//                 height: 5,
//               ),
//               text(),
//               const SizedBox(
//                 height: 5,
//               ),
//               text_1(),
//               text_2(),
//             Text(
//               ''' Effective Length (Leff) = ($Height_of_column x 1000) mm x Elf
//  ''',
//               style: const TextStyle(
//                   fontSize: 15,
//                   // decoration: TextDecoration.underline,
//                   fontWeight: FontWeight.normal),
//             ),
//               text_4(),
//               const Text.rich(TextSpan(
//                   text:
//                   'Slenderness Ratio ( λ ) = Leff/least lateral dimension ',
//                   children: <InlineSpan>[])),
//               const Text.rich(TextSpan(
//                   text: 'Checking eccentricity (Emin):',
//                   style: TextStyle(
//                       fontSize: 20, decoration: TextDecoration.underline)))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//   Widget text() => const Text(
//         'Calculation :',
//         style: TextStyle(
//             fontSize: 20,
//             decoration: TextDecoration.underline,
//             fontWeight: FontWeight.bold),
//       );
//
//   Widget text_1() => const Text(
//         '''Ultimate Load (Pu) = Axial Load x Factor of Safety. \n ultimate Load = \n Effective Length Factor (Elf) = 1.2, \n
//        Grade used : M25 and Fe 500
// ''',
//         style: TextStyle(
//             fontSize: 15,
//             // decoration: TextDecoration.underline,
//             fontWeight: FontWeight.normal),
//       );
//
//   Widget text_2() => const Text(
//         'Using Limit State Method :',
//         style: TextStyle(
//             fontSize: 20,
//             decoration: TextDecoration.underline,
//             fontWeight: FontWeight.bold),
//       );
//
//
//
//   Widget text_4() => const Text(
//         ''' Checking Column is Long or Short
//  ''',
//         style: TextStyle(
//             fontSize: 15,
//             decoration: TextDecoration.underline,
//             fontWeight: FontWeight.bold),
//       );
//
