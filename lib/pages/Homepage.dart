import 'package:flutter/material.dart';
import 'package:toku_app/components/const.dart';
import 'package:toku_app/data/catggroy_List.dart';
import 'package:toku_app/widgets/AppBar.dart';
import 'package:toku_app/widgets/categroy.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<VoidCallback> press = [
      () {
        Navigator.pushNamed(context, "Numbers");
      },
      () {
        Navigator.pushNamed(context, "family");
      },
      () {
        Navigator.pushNamed(context, "Colors");
      },
      () {
        Navigator.pushNamed(context, "phrases");
      }
    ];
    return Scaffold(
        appBar: TukoBar(
          Stitle: "Tuko say Hi (こんにちは)",
          colorbar: color.brown,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Catgroy(
              modle: Listdata.catgroy[index],
              click: press[index],
            );
          },
          itemCount: press.length,
        ));
  }
}
