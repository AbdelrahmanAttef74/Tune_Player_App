import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource(tune.sound));
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
