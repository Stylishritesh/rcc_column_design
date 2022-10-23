import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rcc/RectangleCalculate.dart';
// import 'playPage.dart';
import 'package:intl/intl.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RectanglePage extends StatefulWidget {

  @override
  _RectanglePageState createState() => _RectanglePageState();
}

class _RectanglePageState extends State<RectanglePage> {


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RCC Rectangle Column Design'),
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
  final _Length_of_column_in_Rec = TextEditingController();
  final _Width_of_column_in_Rec = TextEditingController();
  final _Height_of_column_in_Rec = TextEditingController();
  final _Axial_Load_in_Rec = TextEditingController();
  final _gradeOfConcrete_in_Rec = TextEditingController();
  final _gradeOfSteel_in_Rec = TextEditingController();
final _diaOf_Steel_rec = TextEditingController();

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
            TextFormField(
              inputFormatters: [LengthLimitingTextInputFormatter(3),FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.digitsOnly,FilteringTextInputFormatter.deny(RegExp(r'\s'))],
              controller: _Length_of_column_in_Rec,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 2.0)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                ),
                labelText: "Length of Column",suffix: Text('mm'),
              ),
              validator: RequiredValidator(errorText: "Please enter length/depth of column in mm"),
              keyboardType: TextInputType.number,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextFormField(
              inputFormatters: [LengthLimitingTextInputFormatter(3),FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.digitsOnly,FilteringTextInputFormatter.deny(RegExp(r'\s'))],
              controller: _Width_of_column_in_Rec,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 2.0)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                ),
                labelText: "Width of Column",suffix: Text('mm'),
              ),
              keyboardType: TextInputType.number,
              validator: RequiredValidator(
                  errorText: "Please Enter width of column in mm"),
            ),
            SizeBox(),
            TextFormField(
              inputFormatters: [LengthLimitingTextInputFormatter(2),FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.digitsOnly,FilteringTextInputFormatter.deny(RegExp(r'\s'))],
              controller: _Height_of_column_in_Rec,
              decoration: const InputDecoration(
                labelText: 'Height of column',
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 2.0)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                ),
                suffix: Text('m'),
              ),
              keyboardType: TextInputType.number,
              validator: RequiredValidator(
                  errorText: "Please Enter height of column in m"),
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
              inputFormatters: [LengthLimitingTextInputFormatter(5),FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.digitsOnly,FilteringTextInputFormatter.deny(RegExp(r'\s'))],
              controller: _Axial_Load_in_Rec,
              decoration: const InputDecoration(
                labelText: 'Axial Load ',
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.greenAccent, width: 2.0)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                ),
                suffix: Text('KN'),
              ),
              keyboardType: const TextInputType.numberWithOptions(signed: false),
              validator:
              RequiredValidator(errorText: "Please Enter Axial load in KN"),
            ),
            SizeBox(),
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
                    builder: (context) => RectangleCalculatePage(
                      Length_of_column_in_Rec: _Length_of_column_in_Rec.text,
                      Height_of_column_in_Rec: _Height_of_column_in_Rec.text,
                      Width_of_column_in_Rec: _Width_of_column_in_Rec.text,
                      Axial_Load_in_Rec: _Axial_Load_in_Rec.text,
                      GradeOfSteel_in_Rec: _selectedfirst_in_steel,
                      GradeOfConcrete_in_Rec: _selectedfirst_in_concrete, DiaOfSteel_rec: _mainBar,

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



} //End of Stateless Widget

Widget SizeBox(){
  return const SizedBox(height: 30.0,);
}