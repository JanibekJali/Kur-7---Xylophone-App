import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  AudioCache audioPlayer = AudioCache();
  void play() {
    audioPlayer.play('notes/note_1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          buildnote(tus: Colors.greenAccent, noteNomeri: '1'),
          buildnote(tus: Colors.black, noteNomeri: '2'),
          buildnote(tus: Colors.green, noteNomeri: '3'),
          buildnote(tus: Colors.red, noteNomeri: '4'),
          buildnote(tus: Colors.yellow, noteNomeri: '5'),
          buildnote(tus: Colors.grey, noteNomeri: '6'),
          buildnote(tus: Colors.blue, noteNomeri: '7'),
          notanyKur(Colors.amber, '3'),
          notanyKur2(
            Colors.black,
          ),
        ],
      ),
    ));
  }

// sozsuz berish kerek
  Widget notanyKur(Color tus, String notanynZvukalipkel) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: tus,
        height: 100.0,
        child: TextButton(
          onPressed: () =>
              audioPlayer.play('notes/note_$notanynZvukalipkel.wav'),
        ),
      ),
    );
  }

  // po jelaniyu - bersener dele bolot berbei koiso dele bolot
  Widget notanyKur2([Color tus, String notanynZvukalipkel]) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: tus,
        height: 100.0,
        child: TextButton(
          onPressed: () =>
              audioPlayer.play('notes/note_$notanynZvukalipkel.wav'),
        ),
      ),
    );
  }

// aty bar metod

  Expanded buildnote({@required Color tus, @required String noteNomeri}) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: tus,
        height: 100.0,
        child: TextButton(
          onPressed: () => audioPlayer.play('notes/note_$noteNomeri.wav'),
        ),
      ),
    );
  }
}
// DRY - Do not repeat yourself
// dynamic - dinamichnyi -ozgorto bere turgan - postoyanno kyimyldai algan
