import 'package:flutter/material.dart';
import 'package:regular_experssion/app/app.locator.dart';
import 'package:regular_experssion/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomePageViewModel extends BaseViewModel {
  final TextEditingController _textfield = TextEditingController();
  NavigationService navigationService = locator<NavigationService>();
  RegExp regExp = RegExp(
    "(TextField|RadioButton|TextButton|DropdownButton|Checkbox|Slider|Tooltip|Drawer|Text)",
  );

  List<RegExpMatch> results = [];
  TextEditingController get textfield => _textfield;
  void check() {
    results = regExp.allMatches(_textfield.text).toList();

    notifyListeners();
  }

  void navigateToView({required String title}) {
    navigationService.navigateTo(Routes.view,
        arguments: ViewArguments(
          title: title,
        ));
  }
}
