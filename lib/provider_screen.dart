import 'package:flutter/material.dart';

class UnitProvider extends ChangeNotifier {
  String unit1 = "G";
  String unit2 = "G";
  final editorOne = TextEditingController();
  final editorTwo = TextEditingController();
  String get getunit1 {
    return unit1;
  }

  String get getunit2 {
    return unit2;
  }

  void setUnit1(value) {
    unit1 = value;
    notifyListeners();
  }

  void setUnit2(value) {
    unit2 = value;
    notifyListeners();
  }

  void unitConverter1() {
    if (editorOne.text.isEmpty) {
      editorTwo.text = '';
      notifyListeners();
      return;
    }
    double unitOneValue = double.parse(editorOne.text);
    if (unit1 == "KG" && unit2 == "G") {
      editorTwo.text = (unitOneValue * 1000).toString();
    } else if (unit1 == "G" && unit2 == "KG") {
      editorTwo.text = (unitOneValue / 1000).toString();
    } else if (unit1 == "KG" && unit2 == "KG") {
      editorTwo.text = (unitOneValue).toString();
    } else if (unit1 == "G" && unit2 == "G") {
      editorTwo.text = (unitOneValue).toString();
    } else if (unit1 == "KM" && unit2 == "KM") {
      editorTwo.text = (unitOneValue).toString();
    } else if (unit1 == "Mile" && unit2 == "Mile") {
      editorTwo.text = (unitOneValue).toString();
    } else if (unit1 == "KM" && unit2 == "Mile") {
      editorTwo.text = (unitOneValue * 0.62137).toString();
    } else if (unit1 == "Mile" && unit2 == "KM") {
      editorTwo.text = (unitOneValue / 0.62137).toString();
    } else if (unit1 == "Pound" && unit2 == "Pound") {
      editorTwo.text = (unitOneValue).toString();
    } else if (unit1 == "KG" && unit2 == "Pound") {
      editorTwo.text = (unitOneValue * 2.2046).toString();
    } else if (unit1 == "Pound" && unit2 == "KG") {
      editorTwo.text = (unitOneValue / 2.2046).toString();
    } else if (unit1 == "Foot" && unit2 == "Foot") {
      editorTwo.text = (unitOneValue).toString();
    } else if (unit1 == "Inch" && unit2 == "Inch") {
      editorTwo.text = (unitOneValue).toString();
    } else if (unit1 == "Meter" && unit2 == "Meter") {
      editorTwo.text = (unitOneValue).toString();
    } else if (unit1 == "Foot" && unit2 == "Inch") {
      editorTwo.text = (unitOneValue * 12).toString();
    } else if (unit1 == "Inch" && unit2 == "Foot") {
      editorTwo.text = (unitOneValue / 12).toString();
    } else if (unit1 == "KM" && unit2 == "Meter") {
      editorTwo.text = (unitOneValue * 1000).toString();
    } else if (unit1 == "Meter" && unit2 == "KM") {
      editorTwo.text = (unitOneValue / 1000).toString();
    }
    notifyListeners();
  }

  void unitConverter2() {
    if (editorTwo.text.isEmpty) {
      editorOne.text = '';
      notifyListeners();
      return;
    }
    double unittwoValue = double.parse(editorTwo.text);
    if (unit1 == "KG" && unit2 == "G") {
      editorOne.text = (unittwoValue * 1000).toString();
    } else if (unit1 == "G" && unit2 == "KG") {
      editorOne.text = (unittwoValue / 1000).toString();
    } else if (unit1 == "KG" && unit2 == "KG") {
      editorOne.text = (unittwoValue).toString();
    } else if (unit1 == "G" && unit2 == "G") {
      editorOne.text = (unittwoValue).toString();
    } else if (unit1 == "KM" && unit2 == "KM") {
      editorOne.text = (unittwoValue).toString();
    } else if (unit1 == "Mile" && unit2 == "Mile") {
      editorOne.text = (unittwoValue).toString();
    } else if (unit1 == "KM" && unit2 == "Mile") {
      editorOne.text = (unittwoValue * 0.62137).toString();
    } else if (unit1 == "Mile" && unit2 == "KM") {
      editorOne.text = (unittwoValue / 0.62137).toString();
    } else if (unit1 == "Pound" && unit2 == "Pound") {
      editorOne.text = (unittwoValue).toString();
    } else if (unit1 == "KG" && unit2 == "Pound") {
      editorOne.text = (unittwoValue * 2.2046).toString();
    } else if (unit1 == "Pound" && unit2 == "KG") {
      editorOne.text = (unittwoValue / 2.2046).toString();
    } else if (unit1 == "Foot" && unit2 == "Foot") {
      editorOne.text = (unittwoValue).toString();
    } else if (unit1 == "Inch" && unit2 == "Inch") {
      editorOne.text = (unittwoValue).toString();
    } else if (unit1 == "Meter" && unit2 == "Meter") {
      editorOne.text = (unittwoValue).toString();
    } else if (unit1 == "Foot" && unit2 == "Inch") {
      editorOne.text = (unittwoValue * 12).toString();
    } else if (unit1 == "Inch" && unit2 == "Foot") {
      editorOne.text = (unittwoValue / 12).toString();
    } else if (unit1 == "KM" && unit2 == "Meter") {
      editorOne.text = (unittwoValue * 1000).toString();
    } else if (unit1 == "Meter" && unit2 == "KM") {
      editorOne.text = (unittwoValue / 1000).toString();
    }
    notifyListeners();
  }
}
