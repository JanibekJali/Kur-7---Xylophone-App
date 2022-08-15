import 'package:audioplayers/audioplayers.dart';

class AudioService {
  AudioCache audioPlayer = AudioCache();
  Future<void> notePlay(String notaNumber) async {
    await audioPlayer.play('notes/note_$notaNumber.wav');
  }

  Future<void> notePlay2(String notaNumber) async {
    await audioPlayer.play('notes/note_$notaNumber.wav');
  }
}

final AudioService audioService = AudioService();
