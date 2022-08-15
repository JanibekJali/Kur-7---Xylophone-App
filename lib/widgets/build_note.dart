import 'package:flutter/material.dart';
import 'package:xylophone/data/repositories/audioRepos.dart';

class BuildNote extends StatelessWidget {
  final Color color;
  final String notaText;
  final String notaNomeri;
  const BuildNote(
      {@required this.color, @required this.notaNomeri, this.notaText, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: color,
        height: 100.0,
        child: TextButton(
          child: Text(
            notaText,
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => AudioRepo.notePlay(notaNomeri),
        ),
      ),
    );
  }
}
