import 'package:flutter/material.dart';
import 'package:toku/models/phrase.dart';

class PhraseInfo extends StatelessWidget {
  final Phrase item;
  final int color;

  const PhraseInfo({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(color),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () => item.playSound,
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
