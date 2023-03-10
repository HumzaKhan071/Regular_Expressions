import 'package:flutter/material.dart';
import 'package:regular_experssion/views/module1/home_page/view/view_model.dart';
import 'package:stacked/stacked.dart';

class View extends StatelessWidget {
  final String title;
  const View({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ViewModel>.nonReactive(
      viewModelBuilder: () => ViewModel(),
      builder: (context, viewModel, child) => DefaultTabController(
        length: viewModel.noOfTabs,
        child: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: const TabBar(indicatorColor: Colors.black, tabs: [
                    Tab(
                      text: 'Data Driven',
                    ),
                    Tab(
                      text: 'Step Driven',
                    ),
                    Tab(
                      text: 'Guideline Driven',
                    ),
                  ]),
                ),
                Expanded(
                  child: TabBarView(children: [
                    ListView.builder(
                        itemCount:
                            viewModel.result[title]!["DataDriven"]!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                viewModel.result[title]!["DataDriven"]![index]),
                          );
                        }),
                    ListView.builder(
                        itemCount:
                            viewModel.result[title]!["StepDriven"]!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                viewModel.result[title]!["StepDriven"]![index]),
                          );
                        }),
                    ListView.builder(
                        itemCount:
                            viewModel.result[title]!["GuidelineDriven"]!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(viewModel
                                .result[title]!["GuidelineDriven"]![index]),
                          );
                        }),
                  ]),
                ),
              ]),
            )),
      ),
    );
  }
}
