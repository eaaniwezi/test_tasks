// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
                : "Какой-то текст, который может быть сокращен сокращен сокращен сокращен сокращен сокращен0 сокращен1 сокращен12 сокращен13 сокращен14 ",
            isSelected: index.isEven ? true : false,
          );
        }),
      ),
    );
  }
}
