import 'package:flutter/material.dart';
import 'package:regular_experssion/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomePageViewModel extends BaseViewModel {
  final TextEditingController _textfield = TextEditingController();
  NavigationService navigationService = locator<NavigationService>();
  RegExp regExp = RegExp(
    "(TextField|Container|ElevatedButton)",
  );
  List<RegExpMatch> results = [];
  TextEditingController get textfield => _textfield;
  void check() {
    results = regExp.allMatches(_textfield.text).toList();
    notifyListeners();
  }
}
