import 'package:flutter/material.dart';

class ScoreTexts extends StatelessWidget {
  final String title;
  final String subTitle;

  ScoreTexts({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(color: Color.fromARGB(255, 84, 57, 70), fontSize: 22,fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subTitle,
          style: const TextStyle(color: Color.fromARGB(255, 84, 57, 70), fontSize: 38,fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}