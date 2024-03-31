import 'package:flutter/material.dart';
import 'package:toku_app/models/catgory.dart';

class Catgroy extends StatelessWidget {
  final Catgorymod modle;
  final VoidCallback click;
  const Catgroy({
    required this.modle,
    required this.click,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 5),
        width: double.infinity,
        height: 75,
        color: modle.bacColor,
        child: Text(
          modle.title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
