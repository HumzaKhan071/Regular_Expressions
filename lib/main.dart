import 'package:flutter/material.dart';
import 'package:regular_experssion/app/app.router.dart';
import 'package:regular_experssion/views/module2/home_view.dart';

import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: HomeView(),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
