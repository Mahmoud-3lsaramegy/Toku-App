import 'package:flutter/material.dart';
import 'package:toku_app/components/const.dart';
import 'package:toku_app/data/listcolors.dart';
import 'package:toku_app/widgets/AppBar.dart';
import 'package:toku_app/widgets/Colorsitems.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TukoBar(
        Stitle: "Colors",
        colorbar: color.purple,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItmesColor(moudel: DataColor.color[index]);
        },
        itemCount: DataColor.color.length,
      ),
    );
  }
}
