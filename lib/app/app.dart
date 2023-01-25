import 'package:regular_experssion/views/main_screen/main_screen_view.dart';
import 'package:regular_experssion/views/module1/home_page/home_page_view.dart';
import 'package:regular_experssion/views/module1/home_page/view/view.dart';
import 'package:regular_experssion/views/module2/home_view.dart';

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: MainScreenView, initial: true),
    MaterialRoute(page: HomePageView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: View)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)

class AppSetup {
  
}