import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildSec(int i, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(i);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildSec(1, Colors.red),
              buildSec(2, Colors.orange),
              buildSec(3, Colors.yellow),
              buildSec(4, Colors.green),
              buildSec(5, Colors.blue),
              buildSec(6, Colors.teal),
              buildSec(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
