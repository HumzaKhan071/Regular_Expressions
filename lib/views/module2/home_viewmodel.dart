import 'package:flutter/cupertino.dart';
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
  List<String> dropdownvalues = List.generate(20, (index) => "TextField");

  List<TextEditingController> controller =
      List.generate(20, (index) => TextEditingController());

  List<String> results = [];

  List containers = [];

  void add() {
    containers.add(containers.length + 1);
    notifyListeners();
  }

  void clear() {
    containers.clear();
    results.clear();
    notifyListeners();
  }

  void save() {
    results.add(
        "Container ${containers.length} has ${dropdownvalues[containers.length - 1]} with value ${controller[containers.length - 1].text}");

    notifyListeners();
  }
}
