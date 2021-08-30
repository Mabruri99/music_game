import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var color = 'white';

  Text Change({message}) {
    return Text(
      'hello $message',
      style: TextStyle(fontSize: 30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Change()),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Change(message: 'Note 1');
                  final player = AudioCache();
                  player.play('note1.wav');
                },
                child: Text('note 1'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, padding: EdgeInsets.all(30)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
                child: Text('note 2'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, padding: EdgeInsets.all(30)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
                child: Text('note 3'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    padding: EdgeInsets.all(30)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
                child: Text('note 4'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, padding: EdgeInsets.all(30)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
                child: Text('note 5'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green, padding: EdgeInsets.all(30)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
                child: Text('note 6'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black, padding: EdgeInsets.all(30)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
                child: Text('note 7'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.all(30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
