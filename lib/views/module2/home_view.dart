import 'package:flutter/material.dart';
import 'package:regular_experssion/views/module2/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Home View'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: viewModel.containers.length,
                  itemBuilder: (context, index) {
                    return customContainer(size, viewModel, "Controller", index);
                  }),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        viewModel.add();
                      },
                      child: Text("Add")),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.save();
                      },
                      child: Text("Save")),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.clear();
                      },
                      child: Text("Clear")),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                  child: ListView.builder(
                itemCount: viewModel.results.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(viewModel.results[index].toString()),
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }

  Row customContainer(
      Size size, HomeViewModel viewModel, String title, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title ${index.toString()}",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        Container(
            height: 40,
            width: size.width * 0.3,
            padding: const EdgeInsets.only(left: 10, top: 13),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: TextField(
              controller: viewModel.controller[index],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter your name',
              ),
            )),
        customdropDown(viewModel, index: index),
      ],
    );
  }

  DropdownButton<String> customdropDown(HomeViewModel viewModel,
      {required int index}) {
    return DropdownButton(
      value: viewModel.dropdownvalues[index],
      icon: const Icon(Icons.keyboard_arrow_down),
      items: viewModel.items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (String? newValue) {
        viewModel.dropdownvalues[index] = newValue!;
        viewModel.notifyListeners();
      },
    );
  }
}
