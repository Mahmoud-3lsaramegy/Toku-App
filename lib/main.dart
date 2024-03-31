import 'package:flutter/material.dart';

import 'package:toku_app/pages/Colors.dart';

import 'package:toku_app/pages/Homepage.dart';
import 'package:toku_app/pages/Nambers.dart';
import 'package:toku_app/pages/familypage.dart';
import 'package:toku_app/pages/phresas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const HomePage(),
      routes: {
        "Numbers": (context) => const Numbers(),
        "Colors": (context) => const ColorPage(),
        "family": (context) => const FamilyPage(),
        "phrases": (context) => const PhrasesPage(),
      },
    );
  }
}
