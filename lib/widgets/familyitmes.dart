import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/const.dart';
import 'package:toku_app/models/colors.dart';
import 'package:toku_app/models/familymembers.dart';

class Itmesfamliy extends StatelessWidget {
  final Family moudel;

  const Itmesfamliy({super.key, required this.moudel});
  @override
  Widget build(BuildContext context) {
    final audio = AudioPlayer();
    return Container(
      width: double.infinity,
      height: 100,
      color: color.green,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF3DE),
              child: Image.asset(moudel.srcimage)),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  moudel.jbNumber,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  moudel.enNumber,
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
