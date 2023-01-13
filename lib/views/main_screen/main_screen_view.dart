import 'package:flutter/material.dart';
import 'package:regular_experssion/views/main_screen/main_screen_viewmodel.dart';

import 'package:stacked/stacked.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainScreenViewModel>.reactive(
      viewModelBuilder: () => MainScreenViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Main Page'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: viewModel.navigateToModule1,
                    child: Text("Module 1")),
                ElevatedButton(
                    onPressed: viewModel.navigateToModule2,
                    child: Text("Module 2")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
