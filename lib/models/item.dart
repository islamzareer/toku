import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String image;
  final String jpName;
  final String enName;
  final String sound;
  final player = AudioPlayer();

  ItemModel({
    required this.enName,
    required this.image,
    required this.jpName,
    required this.sound,
  });
  playSound() async{
  await  player.setSourceAsset(sound);
    player.resume();
  }
}
