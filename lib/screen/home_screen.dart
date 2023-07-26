import 'package:flutter/material.dart';
import 'package:test_tasks/widgets/custom_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: ((context, index) {
          return CustomWidget(
            text: index.isEven
                ? "Какой-то текст"
                : "Какой-то текст, который может быть сокращен сокращен сокращен сокращен сокращен",
            isSelected: index.isEven ? true : false,
          );
        }),
      ),
    );
  }
}
