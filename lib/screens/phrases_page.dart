import 'package:flutter/material.dart';
import 'package:toku/components/phrase_item.dart';
import 'package:toku/models/phrase.dart';

class PhrasesPage extends StatelessWidget {
  final List<Phrase> phrasesList =  [

    Phrase(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'chich',
      enName: 'Are you coming',
    ),
    Phrase(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
    ),
    Phrase(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'San',
      enName: 'three',
    ),
    Phrase(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
    ),
    Phrase(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Go',
      enName: 'five',
    ),
    Phrase(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
    ),
    Phrase(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',
    ),
    Phrase(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
    ),
    Phrase(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Kyū',
      enName: 'nine',
    ),
    Phrase(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Jū',
      enName: 'ten',
    ),
  ];

   PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Phrases Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          backgroundColor: const Color(0xff46322b),
        ),
        body: ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index) {
            return PhraseInfo(item: phrasesList[index], color: 0xff50adc7);
          },
        ),
      ),
    );
  }
}
