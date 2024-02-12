import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter3/PlayEffect.dart';

class Xilofono extends StatelessWidget {
  final player = AudioPlayer();
  PlaySound playSound = PlaySound();

  Xilofono({super.key});

  void reproducirNota(int nota) {
    playSound.play(nota);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xilofono'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => reproducirNota(1),
              child: Container(color: Colors.red),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => reproducirNota(2),
              child: Container(color: Colors.orange),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => reproducirNota(3),
              child: Container(color: Colors.yellow),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => reproducirNota(4),
              child: Container(color: Colors.green),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => reproducirNota(5),
              child: Container(color: Colors.blue),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => reproducirNota(6),
              child: Container(color: Colors.indigo),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => reproducirNota(7),
              child: Container(color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
