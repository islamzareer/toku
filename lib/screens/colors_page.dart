import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/item.dart';

class ColorsPage extends StatelessWidget {
  final List<ItemModel> numbers = [
    ItemModel(
      jpName: 'ichi',
      enName: 'red',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'yellow',
      image: 'assets/images/numbers/number_two.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      jpName: 'San',
      enName: 'green',
      image: 'assets/images/numbers/number_three.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      jpName: 'Shi',
      enName: 'white',
      image: 'assets/images/numbers/number_four.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      jpName: 'Go',
      enName: 'black',
      image: 'assets/images/numbers/number_five.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      jpName: 'Roku',
      enName: 'gray',
      image: 'assets/images/numbers/number_six.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      jpName: 'Sebun',
      enName: 'brown',
      image: 'assets/images/numbers/number_seven.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      jpName: 'hachi',
      enName: 'dusty yellow',
      image: 'assets/images/numbers/number_eight.png',
    ),
  ];

  ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Numbers Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          backgroundColor: const Color(0xff46322b),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) =>
              ItemInfo(item: numbers[index], color: 0xff79359f),
        ),
      ),
    );
  }
}
