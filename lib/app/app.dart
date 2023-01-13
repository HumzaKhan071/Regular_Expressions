import 'package:regular_experssion/views/module1/home_page/home_page_view.dart';

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomePageView, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)

class AppSetup {
  
}