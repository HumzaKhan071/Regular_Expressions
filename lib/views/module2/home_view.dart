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
                  Text(
                    "Text Field",
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
                  Text(
                    "Radio Button",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
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
                  Text(
                    "Elevated Button",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: Text("ELevatedButton")),
                  customdropDown(viewModel, index: 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Check Box",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
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
                  Text(
                    "Icon",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Icon(Icons.headphones),
                  customdropDown(viewModel, index: 4),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Outlined Button",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {}, child: Text("OutlinedButton")),
                  customdropDown(viewModel, index: 5),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Switch",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
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
                  Text(
                    "Slider",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Slider(
                    value: viewModel.currentSliderValue,
                    min: 0,
                    max: 50,
                    divisions: 3,
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
                  Text(
                    "Text Button",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  TextButton(onPressed: () {}, child: Text("TextButton")),
                  customdropDown(viewModel, index: 8),
                ],
              ),

              const SizedBox(
                height: 13,
              ),

              // Add Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      viewModel.save();
                    },
                    child: Text("Add"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.clear();
                    },
                    child: Text("Clear"),
                  ),
                ],
              ),

              // Display the results
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.results.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: Text(
                            viewModel.results[index],
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
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
