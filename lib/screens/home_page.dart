import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_member_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        title: const Text(
          "TokuApp",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322b),
      ),
      body: Column(
        children: [
          CategoryItem(
            color: 0xffef9235,
            text: "Numbers",
            fun: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),
          CategoryItem(
            color: 0xff558b37,
            text: "Family Members",
            fun: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyPage();
                  },
                ),
              );
            },
          ),
          CategoryItem(
            color: 0xff79359f,
            text: "Colors",
            fun: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            },
          ),
          CategoryItem(
            color: 0xff50adc7,
            text: "Phrases",
            fun: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
