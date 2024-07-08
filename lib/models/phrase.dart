import 'package:audioplayers/audioplayers.dart';

class Phrase {
  final String jpName;
  final String enName;
  final String sound;
    final player = AudioPlayer();


   Phrase({
    required this.enName,
    required this.jpName,
    required this.sound,
  });
    playSound() async{
  await  player.setSourceAsset(sound);
    player.resume();
  }
}
