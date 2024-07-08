import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

class ItemInfo extends StatelessWidget {
  final ItemModel item;
  final int color;

  const ItemInfo({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(color),
      child: Row(
        children: [
          Container(
            color: const Color(0xfffff6dc),
            child: Image.asset(
              item.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
              onPressed: () => item.playSound(),
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
