import 'package:flutter/material.dart';
import 'package:regular_experssion/results_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _textfield = TextEditingController();

    RegExp regExp = RegExp(
      "(TextField|Container|ElevatedButton)",
    );

    List<RegExpMatch> results = [];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Home Page'),
          ),
          TextField(
            maxLines: 3,
            controller: _textfield,
            decoration: const InputDecoration(
              hintText: 'Enter a search term',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              results = regExp.allMatches(_textfield.text).toList();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsView(results: results)));
            },
            child: const Text('Check'),
          ),
        ],
      ),
    );
  }
}
