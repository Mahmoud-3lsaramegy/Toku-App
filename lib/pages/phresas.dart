import 'package:flutter/material.dart';
import 'package:toku_app/components/const.dart';
import 'package:toku_app/data/listphrases.dart';
import 'package:toku_app/widgets/AppBar.dart';
import 'package:toku_app/widgets/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TukoBar(Stitle: "Phrases", colorbar: color.blue),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Itmesphrases(
              moudel: DataPhrases.dataphrase[index],
            );
          },
          itemCount: DataPhrases.dataphrase.length,
        ));
  }
}
