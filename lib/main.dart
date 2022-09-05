
import 'package:flutter/material.dart';

import 'game_play.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flappy Bird',
      theme: ThemeData(
          primaryColor: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: Game(),
    );
  }
}