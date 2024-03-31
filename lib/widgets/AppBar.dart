import 'package:flutter/material.dart';
import 'package:toku_app/components/const.dart';

class TukoBar extends AppBar {
  final String Stitle;
  final Color colorbar;
  TukoBar({required this.Stitle, required this.colorbar});
  @override
  // TODO: implement title
  Widget? get title => Text(
        Stitle,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      );
  @override
  // TODO: implement backgroundColor
  Color? get backgroundColor => colorbar;
}
