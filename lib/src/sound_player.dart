import 'package:just_audio/just_audio.dart';

class SoundPlayer {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> loadSound(
    String path, {
    required double volume,
    required double speed,
    required bool loop,
  }) async {
    await _audioPlayer.setAsset(path);
    await _audioPlayer.setVolume(volume);
    await _audioPlayer.setSpeed(speed);
    await _audioPlayer.setLoopMode(loop ? LoopMode.one : LoopMode.off);
  }

  Future<void> play() async {
    await _audioPlayer.seek(Duration.zero);
    await _audioPlayer.play();
  }

  void dispose() {
    _audioPlayer.dispose();
  }
}
