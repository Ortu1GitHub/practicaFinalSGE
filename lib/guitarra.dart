import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter3/PlayEffect.dart';

class Guitarra extends StatelessWidget {
  final AudioPlayer player = AudioPlayer();
  final PlaySound playSound = PlaySound();

  Guitarra({super.key});

  void reproducirNota(int nota) {
    playSound.play(nota);
  }

  Widget buildNoteRow(String note, int nota) {
    return GestureDetector(
      onTap: () => reproducirNota(nota),
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.brown,
        child: Center(
          child: Text(
            note,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guitarra'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildNoteRow("Mi", 8),
          const SizedBox(height: 10),
          buildNoteRow("Si", 9),
          const SizedBox(height: 10),
          buildNoteRow("Sol", 10),
          const SizedBox(height: 10),
          buildNoteRow("Re", 11),
          const SizedBox(height: 10),
          buildNoteRow("La", 12),
          const SizedBox(height: 10),
          buildNoteRow("Mi", 13),
        ],
      ),
    );
  }
}
