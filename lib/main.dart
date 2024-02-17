import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded makeKey(Color color, int soundNum) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: () {
          playSound(soundNum);
        },
        child: const Text(
          "Avenger's music pro",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              makeKey(Colors.red, 1),
              makeKey(Colors.orange, 2),
              makeKey(Colors.yellow, 3),
              makeKey(Colors.green, 4),
              makeKey(Colors.blue, 5),
              makeKey(Colors.indigo, 6),
              makeKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
