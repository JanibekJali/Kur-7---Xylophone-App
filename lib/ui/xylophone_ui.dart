import 'package:flutter/material.dart';

import '../app_constants/colors/app_colors.dart';
import '../widgets/build_note.dart';

class XylophoneUI extends StatelessWidget {
  const XylophoneUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: const [
          BuildNote(
              color: AppColors.greenLight, notaText: 'ДО', notaNomeri: '1'),
          BuildNote(color: AppColors.black, notaText: 'РЕ', notaNomeri: '2'),
          BuildNote(color: AppColors.green, notaText: 'МЕ', notaNomeri: '3'),
          BuildNote(color: AppColors.red, notaText: 'ФА', notaNomeri: '4'),
          BuildNote(color: AppColors.yellow, notaText: 'СОЛЬ', notaNomeri: '5'),
          BuildNote(color: AppColors.grey, notaText: 'ЛЯ', notaNomeri: '6'),
          BuildNote(color: AppColors.blueDark, notaText: 'СИ', notaNomeri: '7'),
        ],
      ),
    ));
  }
}
