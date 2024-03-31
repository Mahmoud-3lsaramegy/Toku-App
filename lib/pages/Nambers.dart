import 'package:flutter/material.dart';
import 'package:toku_app/components/const.dart';
import 'package:toku_app/data/listnumbers.dart';
import 'package:toku_app/widgets/AppBar.dart';
import 'package:toku_app/widgets/NumberItems.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TukoBar(
          Stitle: "Numbers",
          colorbar: color.yallwo,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ItmesNumber(
              moudel: DataNumber.datanum[index],
            );
          },
          itemCount: DataNumber.datanum.length,
        ));
  }
}
