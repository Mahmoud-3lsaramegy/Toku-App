import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/const.dart';
import 'package:toku_app/models/phrases.dart';

class Itmesphrases extends StatelessWidget {
  final Phrases moudel;

  const Itmesphrases({super.key, required this.moudel});
  @override
  Widget build(BuildContext context) {
    final audio = AudioPlayer();
    return Container(
      width: double.infinity,
      height: 100,
      color: color.blue,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  moudel.jbNumber,
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  moudel.enNumber,
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () async {
                //// audio.setSourceAsset(moudel.srcaudio);
                await audio.play(AssetSource(moudel.srcaudio));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
