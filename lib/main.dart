import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';

void main() {
  runApp(const TocuApp());
}

class TocuApp extends StatelessWidget {
  const TocuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}
