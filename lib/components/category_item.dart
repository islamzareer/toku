import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String text;
  final int color;
  final VoidCallback fun;

  const CategoryItem({super.key, required this.color, required this.text, required this.fun});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        color: Color(color),
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 70,
        width: double.infinity,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
