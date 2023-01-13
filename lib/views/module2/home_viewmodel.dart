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
        "${dropdownvalues[0]}\n${dropdownvalues[1]}\n ${dropdownvalues[2]}\n${dropdownvalues[3]}\n${dropdownvalues[4]}\n${dropdownvalues[5]}\n${dropdownvalues[6]}\n${dropdownvalues[7]}\n${dropdownvalues[8]}");
    // results.clear();
    notifyListeners();
  }

  void clear() {
    results.clear();
    notifyListeners();
  }
}
