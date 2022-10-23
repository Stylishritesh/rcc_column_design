// // ignore_for_file: camel_case_types, duplicate_ignore, non_constant_identifier_names
//
// import 'package:flutter/material.dart';
// import 'calculate.dart';
// // ignore: camel_case_types
// class gradeOfConcrete extends StatefulWidget {
//   const gradeOfConcrete({Key? key}) : super(key: key);
//
//
//
//
//   @override
//   _gradeOfConcreteState createState() => _gradeOfConcreteState();
// }
//
// class _gradeOfConcreteState extends State<gradeOfConcrete> {
// // Initial Selected Value
//   var _dropdownvalue1 = 'M25';
//
// // List of items in our dropdown menu
//   var concrete_grade = ['M15','M20', 'M25',];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         DropdownButton(
//           // Initial Value
//           value: _dropdownvalue1,
//
//           // Down Arrow Icon
//           icon: const Icon(Icons.keyboard_arrow_down),
//
//           // Array list of items
//           items: concrete_grade.map((String items) {
//             return DropdownMenuItem(
//               value: items,
//               child: Text(items),
//             );
//           }).toList(),
//           // After selecting the desired option,it will
//           // change button value to selected value
//           onChanged: (String? newValue) {
//             setState(() {
//               _dropdownvalue1 = newValue!;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
//
// class gradeOfSteel extends StatefulWidget {
//   const gradeOfSteel({Key? key}) : super(key: key);
//
//   @override
//   _gradeOfSteelState createState() => _gradeOfSteelState();
// }
//
// class _gradeOfSteelState extends State<gradeOfSteel> {
// // Initial Selected Value
//   var _dropdownvalue2 = 'Fe415';
//
// // List of items in our dropdown menu
//   var steel_grade = ['Fe250', 'Fe415', 'Fe500','550'];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         DropdownButton(
//           // Initial Value
//           value: _dropdownvalue2,
//
//           // Down Arrow Icon
//           icon: const Icon(Icons.keyboard_arrow_down),
//
//           // Array list of items
//           items: steel_grade.map((String items) {
//             return DropdownMenuItem(
//               value: items,
//               child: Text(items),
//             );
//           }).toList(),
//           // After selecting the desired option,it will
//           // change button value to selected value
//           onChanged: (String? newValue) {
//             setState(() {
//               this._dropdownvalue2 = newValue!;
//             });
//           },
//           hint: Text(_dropdownvalue2)
//         ),
//       ],
//     );
//   }
// }
