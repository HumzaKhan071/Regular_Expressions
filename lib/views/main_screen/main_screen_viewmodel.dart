import 'package:regular_experssion/app/app.locator.dart';
import 'package:regular_experssion/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MainScreenViewModel extends BaseViewModel {
  NavigationService navigationService = locator<NavigationService>();


  void navigateToModule1() {
    navigationService.navigateTo(Routes.homePageView);
  }

  void navigateToModule2() {
    navigationService.navigateTo(Routes.homeView);
  }
}
