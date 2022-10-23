import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'playPage.dart';
import 'package:rcc/SquareCalculate.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class SquarePage extends StatefulWidget {
  // const Design({Key? key}) : super(key: key);

  // final _formKey = GlobalKey<FormState>();

  @override
  _SquarePageState createState() => _SquarePageState();
}

class _SquarePageState extends State<SquarePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RCC Square Column Design'),
        backgroundColor: Colors.brown,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/playPage');
              },
              child: const Icon(Icons.play_circle_fill_rounded),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: const [
                  Text(
                    "Please Input value for the design of Column",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(height:0.4,),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Form(
                      // key: _formKey,
                      child: Column(
                        children: const [
                          Field(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Field extends StatefulWidget {
  const Field({Key? key}) : super(key: key);

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final _Size_of_column_in_Sq = TextEditingController();
  final _Height_of_column_in_Sq = TextEditingController();
  final _Axial_Load_in_Sq = TextEditingController();

  int min = 220;
  int max = 1000;

  final _Concretegrade = ['20', '25', '30', '35', '40', '50'];
  String _selectedfirst_in_concrete = '25';
  final _Steelgrade = ['415', '500'];
  String _selectedfirst_in_steel = "415";
  final _diaOfBar = ['12', '16', '20', '25', '28', '32', '36'];
  String _mainBar = '20';
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Column(
          children: [
            SizeBox(),
            TextFormField(
              validator: RequiredValidator(errorText: "Please enter size of column in mm"),
              inputFormatters: [LengthLimitingTextInputFormatter(3),FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.digitsOnly,FilteringTextInputFormatter.deny(RegExp(r'\s'))],
              controller: _Size_of_column_in_Sq,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 2.0)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                ),
                labelText: "Size of Column",
                suffix: Text('mm'),
              ),
              keyboardType: TextInputType.number,
            ),
            SizeBox(),
            TextFormField(
              validator: RequiredValidator(errorText: "Please enter height of column in m"),
              inputFormatters: [LengthLimitingTextInputFormatter(2),FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.digitsOnly,FilteringTextInputFormatter.deny(RegExp(r'\s'))],
              controller: _Height_of_column_in_Sq,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 2.0)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                ),
                labelText: "Height of Column",
                suffix: Text('m'),
              ),
              keyboardType: TextInputType.number,
            ),
            SizeBox(),
            DropdownButtonFormField(
                icon: const Icon(
                  Icons.swipe_down_sharp,
                  color: Colors.green,
                ),
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.greenAccent, width: 2.0)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                  ),
                  labelText: 'Grade of Concrete',
                  suffix: Text('MPa'),
                ),
                value: _selectedfirst_in_concrete,
                items: _Concretegrade.map((e) {
                  return DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  );
                }).toList(),
                onChanged: (val) {
                  _selectedfirst_in_concrete = val as String;
                }),
            SizeBox(),
            DropdownButtonFormField(
                icon: const Icon(
                  Icons.swipe_down_sharp,
                  color: Colors.green,
                ),
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.greenAccent, width: 2.0)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                  ),
                  labelText: 'Grade of Steel',
                  suffix: Text('Mpa'),
                ),
                value: _selectedfirst_in_steel,
                items: _Steelgrade.map((e) {
                  return DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  );
                }).toList(),
                onChanged: (val) {
                  _selectedfirst_in_steel = val as String;
                }),
            SizeBox(),
            DropdownButtonFormField(
                icon: const Icon(
                  Icons.swipe_down_sharp,
                  color: Colors.green,
                ),
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.greenAccent, width: 2.0)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                  ),
                  labelText: 'Dia of main bar',
                  suffix: Text('Φ mm'),
                ),
                value: _mainBar,
                items: _diaOfBar.map((e) {
                  return DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  );
                }).toList(),
                onChanged: (val) {
                  _mainBar = val as String;
                }),
            SizeBox(),
            TextFormField(
              validator: RequiredValidator(errorText: "Please enter axila load in KN"),
              inputFormatters: [LengthLimitingTextInputFormatter(5),FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.digitsOnly,FilteringTextInputFormatter.deny(RegExp(r'\s'))],
              controller: _Axial_Load_in_Sq,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 2.0)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                ),
                labelText: 'Axial Load ',
                suffix: Text('KN'),
              ),
              keyboardType: TextInputType.number,
              // validator:
              //     RequiredValidator(errorText: "Please Enter Axial load"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                if (!formkey.currentState!.validate()) {
                  return;
                }
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SquareCalculatePage(
                          Size_of_Column_in_Sq: _Size_of_column_in_Sq.text,
                          Height_of_column_in_Sq: _Height_of_column_in_Sq.text,
                          Axial_Load_in_Sq: _Axial_Load_in_Sq.text,
                          GradeOfSteel_in_Sq: _selectedfirst_in_steel,
                          GradeOfConcrete_in_Sq: _selectedfirst_in_concrete,
                          DiaOfSteel_in_Sq: _mainBar,
                        )));
              },
              child: const Text(
                'Calculate',
                style: TextStyle(color: Colors.pink, fontSize: 20),
              ),
            )
          ],
        ));
  }
}

Widget SizeBox() {
  return const SizedBox(
    height: 30,
  );
}
