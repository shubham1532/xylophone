import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player=AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({int num,Color color}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
           playSound(num);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(num: 1,color: Colors.red),
                buildKey(num: 2,color: Colors.orange),
                buildKey(num: 3,color: Colors.yellow),
                buildKey(num: 4,color: Colors.blue),
                buildKey(num: 5,color: Colors.teal),
                buildKey(num: 6,color: Colors.green),
                buildKey(num: 7,color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
