import 'package:audioplayers/audioplayers.dart';

class PlaySound {
  final player = AudioPlayer();

  void play(int num) {
    player.play(AssetSource('sound/note$num.wav'));
  }
}
