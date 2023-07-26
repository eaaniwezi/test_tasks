import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CustomWidget({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            _getShortenedText(context),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(width: 10),
          _buildDottedLine(),
          const SizedBox(width: 10),
          Checkbox(
            value: isSelected,
            onChanged: (value) {
              //
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDottedLine() {
    return Expanded(
      child: Container(
        width: 1,
        height: 1,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            10,
            (index) => const SizedBox(width: 2, height: 1),
          ),
        ),
      ),
    );
  }

  String _getShortenedText(context) {
    const int availableSpace = 60;
    int maxLength = 100;
    int maxTextLength = maxLength - availableSpace;
    if (text.length > maxTextLength) {
      return text.substring(0, maxTextLength - 3) + "...";
    } else {
      return text;
    }
  }
}
