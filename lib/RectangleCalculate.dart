// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';


class RectangleCalculatePage extends StatelessWidget {


  String Length_of_column_in_Rec , Height_of_column_in_Rec, Width_of_column_in_Rec, Axial_Load_in_Rec , GradeOfConcrete_in_Rec, GradeOfSteel_in_Rec, DiaOfSteel_rec;


  RectangleCalculatePage({Key? key, required this.Length_of_column_in_Rec,required this.Height_of_column_in_Rec,
    required this.Width_of_column_in_Rec,required this.Axial_Load_in_Rec,required this.GradeOfConcrete_in_Rec,required this.GradeOfSteel_in_Rec,required this.DiaOfSteel_rec}) : super(key: key);
  String LengthFactor = "1.2";
  String LoadFactor = "1.5";
  // double _LeastLateralDimension;

  var _SlendeernessRatio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculation Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Length of Column = $Length_of_column_in_Rec"),
              Text("Width of Column = $Width_of_column_in_Rec"),
              Text("Height of Column = $Height_of_column_in_Rec"),
              Text("Axial Load applied on Column = $Axial_Load_in_Rec "),
              Text("Grade of Concrete = $GradeOfConcrete_in_Rec"),
              Text("Grade of Steel = $GradeOfSteel_in_Rec"),
              Text("Dia of Lonfitudinal bar = $DiaOfSteel_rec"),
              Text(LeastLateralDimension()),
              const SizedBox(
                height: 5,
              ),
              const Text("Assume Effective Length factor = 1.2"),
              Size5(),
              const Text("Ultimate Load = Axial Load x Load factor"),
              Text("Ultimate Load = $Axial_Load_in_Rec x $LoadFactor kN"),
              Text(UltimateLoad()),
              const Text("Using Limit state method of design:"),
              const Text(
                  "Here, Effective Length(leff) = Height of Column x Effective Length factor."),
              Text("leff = $Height_of_column_in_Rec x $LengthFactor"),
              Text(EffectiveLength()),
              const Text("Checking Column is Long or Short:"),
              const Text(
                  "Slenderness ratio (λ) = Effective Length/Least lateral dimension"),
              Text(SlendernessRatio()),
              Text(CheckRatio()),
              const Text("Checking minimum eccentricity(emin)"),
              const Text("emin = max of   {lunsupported/500 + D/30  or 20 mm."),
              Text(CheckEccentricity()),
              RichText(text: TextSpan(children: [const TextSpan(
                  text: 'e',
                  style: TextStyle(color: Colors.purple, fontSize: 20)),
                const TextSpan(
                    text: 'min',
                    style: TextStyle(
                        color: Colors.purple,
                        fontFeatures: [FontFeature.subscripts()])),TextSpan( text: CheckEmin()),])),
              const Text("Area of Steel:"),
              Text(AreaOfSteel()),
              Text("Dia of Longitudinal bar provided is $DiaOfSteel_rec mm"),
              const Text("Area of 1 bar = πxd2/4 \n where d is dia of longitudinal bar "),
              Text(AreaOf1Bar()), Text(No_Of_Bar()),

              const Text("Design of Lateral ties:"),
              const Text("dia of tie should be greater than or equal to max of {longitudinal bar /4 \n or, 6 mm}"),
              Text(DiaOfTies()),
              const Text("Pitch (Spacing) should be least of the  following: \n Least lateral dimension \n or, 16 x Smaller dia of longitudinal bar \n or, 300 mm."),
              Text(Pitch()),
            ],
          ),
        ),
      ),
    );
  }

  var _LeastLateralDimension;
  var _height;
  var _Ultimateload;
  var _EffectiveLength;
  String UltimateLoad() {
    double AxialLoad = double.parse(Axial_Load_in_Rec.toString());
    _Ultimateload = AxialLoad * 1.5 * 1000;
    String UltimateLoad = "Pu = $_Ultimateload N";
    return UltimateLoad;
  } // Ultimate Load function

  String AreaOfColumn() {
    double AreaOfColumn = double.parse(Width_of_column_in_Rec.toString()) * double.parse(Length_of_column_in_Rec.toString());;
    String Area = "Area of Column = $AreaOfColumn";
    return Area;
  } //Area of Column function

  String EffectiveLength() {
    _height = double.parse(Height_of_column_in_Rec.toString()) * 1000;
    _EffectiveLength = _height * 1.2;
    String Leff = "Effective Length = $_EffectiveLength mm";
    return Leff;
  } // Effective Length function

  String LeastLateralDimension(){
    double Width_of_Column = double.parse(Width_of_column_in_Rec.toString());
    double Length_of_Column = double.parse(Length_of_column_in_Rec.toString());
    if(Width_of_Column>Length_of_Column){
      _LeastLateralDimension = Length_of_Column;
      return 'Least lateral Dimension is $_LeastLateralDimension';
    } else{
      _LeastLateralDimension = Width_of_Column;
      return 'Least lateral Dimension is $_LeastLateralDimension';
    }
  }

  String SlendernessRatio() {
    _SlendeernessRatio = _EffectiveLength / _LeastLateralDimension;
    String ratio = _SlendeernessRatio.toStringAsFixed(2);
    String Slratio = "Slenderness Ratio (λ) = $ratio";
    return Slratio;
  } //SlendernessRatio

  String CheckRatio() {
    if (_SlendeernessRatio >= 12) {
      return 'Hence, It is Long Column';
    } else {
      return 'Hence It is Short Column';
    }
  } // checking ratio

  var _Eccentricity;
  String CheckEccentricity() {
    _Eccentricity = (_height / 500) + (_LeastLateralDimension / 30);
    _ecc = _Eccentricity.toStringAsFixed(2);
    String Emin = "Eccentricity = $_ecc";
    return Emin;
  } // Calculation of Eccentricity;

  var _ecc;
  String CheckEmin() {
    if (_Eccentricity >= 20) {
      return '$_ecc mm';
    } else {
      return
        'should be less than 0.05D, So Considering 20 mm of eccentricity.';
    }
  }

  //checking eccentricity
  var _fck;
  var _fy;
  var _AreaOfSteel;
  var _AreaOfColumn;
  String AreaOfSteel() {
    _fck = double.parse(GradeOfConcrete_in_Rec.toString());
    _fy = double.parse(GradeOfSteel_in_Rec.toString());
    _AreaOfColumn = double.parse(Length_of_column_in_Rec.toString()) *
        double.parse(Width_of_column_in_Rec.toString());
    // (_Ultimateload - (0.4-_fck*_AreaOfColumn))/(0.67*_fy) - (0.4*_fck);
    double upper = _Ultimateload - (0.4 * _fck * _AreaOfColumn);
    double lower = (0.67 * _fy) - (0.4 * _fck);
    // (_Ultimateload - (0.4-(_fck*_AreaOfColumn)))/((0.67*_fy) - (0.4*_fck));
    _AreaOfSteel = upper / lower;
    String area = _AreaOfSteel.toStringAsFixed(2);
    String Area = "Area of Steel = $area";
    return Area;
  } // Area of Steel;
  var _dia, _areaOf1Bar;
  String AreaOf1Bar(){
    _dia = double.parse(DiaOfSteel_rec.toString());
    _areaOf1Bar = (3.14 * _dia*_dia)/4;
    String _barArea = _areaOf1Bar.toStringAsFixed(1);
    String area = "Area of 1 bar = $_barArea";
    return area;
  }
  var _no_of_bar;
  String No_Of_Bar(){
    _no_of_bar = _AreaOfSteel/_areaOf1Bar;
    double roundno = _no_of_bar.roundToDouble();
    String barNo = _no_of_bar.toStringAsFixed(2);
    String noofbar = 'No. of bar provided =$barNo \n Hence Provide no of bar $roundno';
    return noofbar;
  }
  var _diaOf_ties;
  String DiaOfTies(){
    double Longitudinal_bar = double.parse(DiaOfSteel_rec.toString());
    _diaOf_ties = (Longitudinal_bar /4).roundToDouble();
    if(6< _diaOf_ties){
      return "Dia of ties = $_diaOf_ties";
    } else {
      return "Dia of ties = 6 mm";
    }
  }
  var _smaller_dia_of_longitudinalbar;
  String Pitch(){
    double Longitudinal_bar = double.parse(DiaOfSteel_rec.toString());
    _smaller_dia_of_longitudinalbar = Longitudinal_bar;
    num dia16multiply = 16*_smaller_dia_of_longitudinalbar;
    if(_LeastLateralDimension < 300 || _LeastLateralDimension < dia16multiply){
      return "Pitch provided = $_LeastLateralDimension mm";
    } else if (dia16multiply < 300 || dia16multiply < _LeastLateralDimension){
      return "Pitch provided = $dia16multiply mm";
    }
    else {
      return "Pitch provided = 300 mm";
    }
  }

}













Widget Size5(){
  return const SizedBox(height: 10,);
}

Widget Size30(){
  return const SizedBox(height: 30,);
}

Widget Size10(){
  return const SizedBox(height: 10,);
}

Widget Size15(){
  return const SizedBox(height: 15,);
}

Widget Size20(){
  return const SizedBox(height: 15,);
}
