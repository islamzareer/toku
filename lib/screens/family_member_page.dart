import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/item.dart';

class FamilyPage extends StatelessWidget {
  final List<ItemModel> members = [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      jpName: 'chich',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'San',
      enName: 'three',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brother.wav',
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
  ];

  FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Family Member Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          backgroundColor: const Color(0xff46322b),
        ),
        body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return ItemInfo(item: members[index], color: 0xff558b37);
          },
        ),
      ),
    );
  }
}
