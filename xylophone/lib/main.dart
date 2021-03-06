import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(color: Colors.red, noteNum: 1),
                  buildKey(color: Colors.orange, noteNum: 2),
                  buildKey(color: Colors.yellow, noteNum: 3),
                  buildKey(color: Colors.green, noteNum: 4),
                  buildKey(color: Colors.blue, noteNum: 5),
                  buildKey(color: Colors.indigo, noteNum: 6),
                  buildKey(color: Colors.purple, noteNum: 7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildKey({Color color, int noteNum}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 4, 8, 4),
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: color,
          onPressed: () {
            final player = AudioCache();
            player.play('note$noteNum.wav');
          },
          child: null,
        ),
      ),
    );
  }
}
