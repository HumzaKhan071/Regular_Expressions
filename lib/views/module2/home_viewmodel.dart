import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  var items = [
    'TextField',
    'Radio',
    'Elevated Button',
    "Checkbox",
    "Icon",
    "Outlined Button",
    "Switch",
    "Slider",
    "Text Button"
  ];
  int radioGroupValue = 0;
  bool value = false;
  bool light = true;
  double currentSliderValue = 20;
  

  List<String> dropdownvalues = List.generate(9, (index) => "TextField");

  List<String> results = [];

  void save() {
    results.add(
        "${dropdownvalues[0]}${dropdownvalues[1]} ${dropdownvalues[2]}${dropdownvalues[3]}${dropdownvalues[4]}${dropdownvalues[5]}${dropdownvalues[6]}${dropdownvalues[7]}${dropdownvalues[8]}");

    notifyListeners();
  }
}
