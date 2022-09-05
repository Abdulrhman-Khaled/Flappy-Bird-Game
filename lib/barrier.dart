import 'package:flutter/material.dart';

class MyBarrier extends StatelessWidget {
  final double barrierHeight;
  final double barrierXAxis;
  final double barrierYAxis;

  MyBarrier(
      {required this.barrierHeight,
      required this.barrierXAxis,
      required this.barrierYAxis});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final height = (screenHeight / 8) * (barrierHeight / 100);
    return AnimatedContainer(
      duration: const Duration(),
      alignment: Alignment(barrierXAxis, barrierYAxis),
      child: Container(
        width: 80,
        height: height,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 157, 230, 88),
                Color.fromARGB(255, 114, 191, 47),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.3, 0.7],
              tileMode: TileMode.repeated,
            ),
            border: Border.all(
              width: 5,
              color: const Color.fromARGB(255, 84, 57, 70),
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
