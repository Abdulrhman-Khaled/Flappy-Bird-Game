import 'package:flutter/material.dart';

class MyBird extends StatelessWidget {
  final double birdYAxis;
  static const double birdXAxis = -0.5;
  MyBird({required this.birdYAxis});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(),
      alignment: Alignment(birdXAxis, birdYAxis),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/sky_back.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        height: 75,
        width: 75,
        child: Image.asset('images/bird.gif'),
      ),
    );
  }
}