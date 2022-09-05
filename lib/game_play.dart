import 'package:audioplayers/audioplayers.dart';
import 'package:flappy_bird/score.dart';
import 'package:flappy_bird/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'barrier.dart';
import 'bird.dart';
import 'bloc.dart';

class Game extends StatelessWidget {
  static late GameBloc _bloc;

  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameBloc()..add(OnInitialiseGame()),
      child: BlocConsumer<GameBloc, GameState>(
        listener: (context, state) {
          if (state is GameProgressUpdated) {
            if (state.birdYaxis > 1 || state.isBarrierTouched) {
              gameSound("game_over.wav");
              showGameOverDialog(context);
              return;
            }
          }
        },
        builder: (context, state) {
          _bloc = BlocProvider.of<GameBloc>(context);
          if (state is GameProgressUpdated) {
            final birdYaxis = state.birdYaxis;
            final barrierXOne = state.barrierXOne;
            final isStartGame = state.isStartGame;
            final barrierXTwo = state.barrierXTwo;
            final score = state.score;
            final bestScore = state.bestScore;
            return GestureDetector(
              onTap: () {
                gameSound("jumb.wav");
                isStartGame
                    ? _bloc.add(OnScreenTapped())
                    : _bloc.add(OnStartGame());
              },
              child: Scaffold(
                body: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          MyBird(
                            birdYAxis: birdYaxis,
                          ),
                          // barrierXOne
                          MyBarrier(
                            barrierHeight: 180,
                            barrierXAxis: barrierXOne,
                            barrierYAxis: 1.1,
                          ),
                          //barrierXTwo
                          MyBarrier(
                            barrierHeight: 120,
                            barrierXAxis: barrierXTwo,
                            barrierYAxis: 1.1,
                          ),
                          //barrierXTwo
                          MyBarrier(
                            barrierHeight: 250,
                            barrierXAxis: barrierXTwo,
                            barrierYAxis: -1.1,
                          ),
                          //barrierXOne
                          MyBarrier(
                            barrierHeight: 180,
                            barrierXAxis: barrierXOne,
                            barrierYAxis: -1.1,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 28),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/ground.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ScoreTexts(
                                  title: "سكورك دلوقتي",
                                  subTitle: score.toString(),
                                ),
                                ScoreTexts(
                                  title: "اجمد سكور",
                                  subTitle: bestScore.toString(),
                                ),
                              ],
                            ),
                          ),
                          const Align(
                            alignment: Alignment(0, 0.8),
                            child: Text(
                              "M A D E   W I T H   ❤   B Y   B O D Y K H",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 84, 57, 70),
                                  fontSize: 14),
                            ),
                          ),
                          Visibility(
                            visible: !isStartGame,
                            child: const Align(
                              alignment: Alignment(0, -0.95),
                              child: Text(
                                "دوس عشـان تـلـعـب",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 84, 57, 70),
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return const SplashScreen();
        },
      ),
    );
  }

  static Future<void> gameSound(String source) async {
    AudioPlayer player = AudioPlayer();
    player.play(AssetSource(source));
  }

  showGameOverDialog(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: const Color.fromARGB(255, 222, 217, 148),
        title: const Image(
          image: AssetImage("images/gameover.gif"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _bloc.add(OnStartGame());
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 251, 161, 81)), //Background Color
              elevation: MaterialStateProperty.all(3), //Defines Elevation
              shadowColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 251, 161, 81)), //Defines shadowColor
            ),
            child: const Align(
              alignment: Alignment(0, 0),
              child: Text(
                "جـرب تـانـي",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
