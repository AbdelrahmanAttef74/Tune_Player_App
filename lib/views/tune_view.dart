import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffee2b3c), sound: 'note1.wav'),
    TuneModel(color: Color(0xfff49431), sound: 'note2.wav'),
    TuneModel(color: Color(0xfffbf25e), sound: 'note3.wav'),
    TuneModel(color: Color(0xff3dc15b), sound: 'note4.wav'),
    TuneModel(color: Color(0xff0da588), sound: 'note5.wav'),
    TuneModel(color: Color(0xff0ea0e9), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9a10a8), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff26313a),
        title: Text(
          'Flutter Tune',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
