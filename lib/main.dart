import 'package:flutter/material.dart';
import 'package:xylophone/ui/xylophone_ui.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: XylophoneUI(),
    );
  }
}
