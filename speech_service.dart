import 'package:flutter_tts/flutter_tts.dart';

class SpeechService {
  final FlutterTts _flutterTts = FlutterTts();

  SpeechService() {
    _initTts();
  }

  Future<void> _initTts() async {
    try {
      await _flutterTts.setLanguage("en-US");
    } catch (e) {
      // Fallback or silent catch if platform doesn't support TTS initialization immediately
    }
  }

  Future<void> speak(String text, {double rate = 0.5, double pitch = 1.0, double volume = 1.0}) async {
    try {
      await _flutterTts.stop();
      await _flutterTts.setSpeechRate(rate);
      await _flutterTts.setPitch(pitch);
      await _flutterTts.setVolume(volume);
      await _flutterTts.speak(text);
    } catch (e) {
      // Print error locally, do not block the application flow
      print("TTS Speech Error: $e");
    }
  }

  Future<void> stop() async {
    try {
      await _flutterTts.stop();
    } catch (e) {
      print("TTS Stop Error: $e");
    }
  }
}
