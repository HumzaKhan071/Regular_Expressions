import 'package:flutter/material.dart';

class ResultsView extends StatelessWidget {
  final List<RegExpMatch> results;
  const ResultsView({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: results.length,
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text(results[index]
                  .input
                  .substring(results[index].start, results[index].end)),
            );
          })),
    );
  }
}
