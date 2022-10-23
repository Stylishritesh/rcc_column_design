import 'package:flutter/material.dart';
// import 'playPage.dart';
import 'package:rcc/square.dart';
import '../rectangle.dart';
import 'calculate.dart';
import 'package:form_field_validator/form_field_validator.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';

class Design extends StatefulWidget {
  // const Design({Key? key}) : super(key: key);

  // final _formKey = GlobalKey<FormState>();

  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RCC Column Design'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    'images/column.png',
                    // fit: BoxFit.cover,
                  ),
                  const Text(
                    "COLUMN DESIGN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            const Text("Select the type of Column to Design"),
            const SizedBox(height: 150,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 80),
                    primary: Colors.blueGrey,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SquarePage()));
                  },
                  child: const Text("SQUARE"),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 80),
                    primary: Colors.grey,
                  ),
                  onPressed: () {

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RectanglePage()));
                  },
                  child: const Text("RECTANGLE"),
                ),
              ],
            ), // const SizedBox(height:0.4,),
          ],
        ),
      ),
    );
  }
}

// class Field extends StatefulWidget {
//   const Field({Key? key}) : super(key: key);
//
//   @override
//   State<Field> createState() => _FieldState();
// }
//
// class _FieldState extends State<Field> {
//   GlobalKey<FormState> formkey = GlobalKey<FormState>();
//   final _Length_of_column = TextEditingController();
//   final _Width_of_column = TextEditingController();
//   final _Height_of_column = TextEditingController();
//   final _Axial_Load = TextEditingController();
//   final _gradeOfConcrete = TextEditingController();
//   final _gradeOfSteel = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: formkey,
//         child: Column(
//           children: [
//             TextFormField(
//               controller: _Length_of_column,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Length of Column",
//               ),
//               validator: RequiredValidator(
//                   errorText: "Please Enter Length of column in mm"),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(top: 20.0),
//             ),
//             TextFormField(
//               controller: _Width_of_column,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Width of Column",
//               ),
//               validator: RequiredValidator(
//                   errorText: "Please Enter width of column in mm"),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextFormField(
//               controller: _Height_of_column,
//               decoration: const InputDecoration(
//                 labelText: 'Height of column',
//                 border: OutlineInputBorder(),
//                 suffix: Text('m'),
//               ),
//               keyboardType: TextInputType.number,
//               validator: RequiredValidator(
//                   errorText: "Please Enter height of column in mm"),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextFormField(
//               controller: _gradeOfConcrete,
//               decoration: const InputDecoration(
//                 contentPadding:
//                     EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
//                 fillColor: Colors.black12,
//                 focusColor: Colors.grey,
//                 labelText: 'Grade of Concrete ',
//                 border: OutlineInputBorder(),
//                 suffix: Text('M'),
//               ),
//               keyboardType: TextInputType.number,
//               validator: RequiredValidator(
//                   errorText: "Please Enter Grade of Concrete"),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextFormField(
//               controller: _gradeOfSteel,
//               decoration: const InputDecoration(
//                 labelText: ' Grade of Steel',
//                 border: OutlineInputBorder(),
//                 suffix: Text('M'),
//               ),
//               keyboardType: TextInputType.number,
//               validator:
//                   RequiredValidator(errorText: "Please Enter Grade of Steel"),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             TextFormField(
//               controller: _Axial_Load,
//               decoration: const InputDecoration(
//                 labelText: 'Axial Load ',
//                 border: OutlineInputBorder(),
//                 suffix: Text('KN'),
//               ),
//               keyboardType: TextInputType.number,
//               validator:
//                   RequiredValidator(errorText: "Please Enter Axial load"),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const Padding(
//               padding: EdgeInsets.only(top: 20.0),
//             ),
//             ElevatedButton(
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(Colors.white),
//               ),
//               onPressed: () {
//                 if (!formkey.currentState!.validate()) {
//                   return;
//                 }
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => CalculatePage(
//                           Length_of_column: _Length_of_column.text,
//                           Height_of_column: _Height_of_column.text,
//                           Width_of_column: _Width_of_column.text,
//                           Axial_Load: _Axial_Load.text,
//                           GradeOfSteel: _gradeOfSteel.text,
//                           GradeOfConcrete: _gradeOfConcrete.text,
//                         )));
//               },
//               child: const Text(
//                 'Calculate',
//                 style: TextStyle(color: Colors.pink, fontSize: 20),
//               ),
//             )
//           ],
//         ));
//   }
// }
