import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter3/PlayEffect.dart';

class Bongos extends StatelessWidget {
  final AudioPlayer player = AudioPlayer();
  final PlaySound playSound = PlaySound();

  Bongos({super.key});

  void reproducirNota(int nota) {
    playSound.play(nota);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bongos'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => reproducirNota(14),
              child: Image.asset(
                'images/bongo1.jpg',
                width: 250,
              ),
            ),
            const SizedBox(height: 20), // Espacio entre las imágenes
            GestureDetector(
              onTap: () => reproducirNota(15),
              child: Image.asset(
                'images/bongo2.jpg',
                width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
