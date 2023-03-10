import 'package:flutter/material.dart';
import 'package:regular_experssion/views/module1/home_page/home_page_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
      viewModelBuilder: () => HomePageViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          children: [
            TextField(
              maxLines: 3,
              controller: viewModel.textfield,
              decoration: const InputDecoration(
                hintText: 'Enter a search term',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                viewModel.check();
                viewModel.textfield.clear();
                print(
                    "results: ${viewModel.results[0].start} ${viewModel.results[0].end}");
              },
              child: const Text('Check'),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: viewModel.results.length,
                  itemBuilder: ((context, index) {
                    return ElevatedButton(
                      onPressed: () {
                        viewModel.navigateToView(
                          title: viewModel.results[index].input.substring(
                              viewModel.results[index].start,
                              viewModel.results[index].end),
                        );
                      },
                      child: Text(viewModel.results[index].input.substring(
                          viewModel.results[index].start,
                          viewModel.results[index].end)),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
