import 'package:flutter/material.dart';
import 'package:toku_app/components/const.dart';
import 'package:toku_app/data/listfamily.dart';
import 'package:toku_app/widgets/AppBar.dart';
import 'package:toku_app/widgets/familyitmes.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TukoBar(Stitle: "Family Members", colorbar: color.green),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Itmesfamliy(moudel: Datafamily.member[index]);
        },
        itemCount: Datafamily.member.length,
      ),
    );
  }
}
