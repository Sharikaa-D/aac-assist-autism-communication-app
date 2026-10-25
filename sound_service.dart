import 'package:audioplayers/audioplayers.dart';

class SoundService {
  final AudioPlayer _player = AudioPlayer();

  Future<void> playClick({double volume = 0.8}) async {
    try {
      await _player.stop();
      await _player.setVolume(volume);
      // Play the cute selection cue
      await _player.play(AssetSource('audio/tap.mp3'));
    } catch (e) {
      // Graceful fallback to console output if asset is not present or device is muted
      print("SoundService Click: Play Tap Sound (volume: $volume) -> $e");
    }
  }

  Future<void> playSuccess({double volume = 0.8}) async {
    try {
      await _player.stop();
      await _player.setVolume(volume);
      await _player.play(AssetSource('audio/success.mp3'));
    } catch (e) {
      print("SoundService Success: Play Success Sound (volume: $volume) -> $e");
    }
  }

  Future<void> playEmergency({double volume = 1.0}) async {
    try {
      await _player.stop();
      await _player.setVolume(volume);
      await _player.play(AssetSource('audio/emergency.mp3'));
    } catch (e) {
      print("SoundService Emergency: Play Emergency Alarm (volume: $volume) -> $e");
    }
  }

  void dispose() {
    _player.dispose();
  }
}
