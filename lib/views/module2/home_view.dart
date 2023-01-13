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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 40,
                      width: size.width * 0.4,
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your name',
                        ),
                      )),
                  customdropDown(viewModel, index: 0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                    activeColor: Colors.green,
                    value: 0,
                    groupValue: viewModel.radioGroupValue,
                    onChanged: (value) {
                      viewModel.radioGroupValue = value as int;
                      viewModel.notifyListeners();
                    },
                  ),
                  customdropDown(viewModel, index: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: Text("ELevatedButton")),
                  customdropDown(viewModel, index: 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    value: viewModel.value,
                    onChanged: (value) {
                      viewModel.value = value!;
                      viewModel.notifyListeners();
                    },
                  ), //Checkbox
                  customdropDown(viewModel, index: 3),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.headphones),
                  customdropDown(viewModel, index: 4),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      onPressed: () {}, child: Text("OutlinedButton")),
                  customdropDown(viewModel, index: 5),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Switch(
                    // This bool value toggles the switch.
                    value: viewModel.light,
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      viewModel.light = value;
                      viewModel.notifyListeners();
                    },
                  ),
                  customdropDown(viewModel, index: 6),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Slider(
                    value: viewModel.currentSliderValue,
                    min: 0,
                    max: 100,
                    divisions: 5,
                    label: viewModel.currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      viewModel.currentSliderValue = value;
                      viewModel.notifyListeners();
                    },
                  ),
                  customdropDown(viewModel, index: 7),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {}, child: Text("TextButton")),
                  customdropDown(viewModel, index: 8),
                ],
              ),
             
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    viewModel.save();
                  },
                  child: const Text("Save")),

              // Display the results
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.results.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(viewModel.results[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
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
