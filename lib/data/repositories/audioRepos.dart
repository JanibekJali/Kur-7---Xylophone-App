import '../services/audio_service.dart';

class AudioRepo {
  static Future<void> notePlay(String notaNumber) async {
    return await audioService.notePlay2(notaNumber);
  }
}
