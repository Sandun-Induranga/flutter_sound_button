import 'package:flutter/material.dart';
import 'package:flutter_sound_button/default_sounds.dart';
import 'package:flutter_sound_button/src/sound_player.dart';
import 'package:flutter/services.dart'; // For haptic feedback

class SoundButton extends StatefulWidget {
  final String? soundPath; // Custom sound file path (e.g., 'assets/sounds/click.mp3')
  final DefaultSound? defaultSound; // Predefined sound option
  final double volume; // Volume (0.0 to 1.0)
  final double playbackSpeed; // Playback speed (e.g., 1.0 = normal)
  final bool loopSound; // Whether to loop the sound
  final bool enableHaptic; // Haptic feedback on press
  final VoidCallback? onPressed; // Custom action after sound
  final Widget child; // Button content (text, icon, etc.)
  final ButtonStyle? style; // Custom button styling

  const SoundButton({
    super.key,
    this.soundPath,
    this.defaultSound,
    this.volume = 1.0,
    this.playbackSpeed = 1.0,
    this.loopSound = false,
    this.enableHaptic = true,
    required this.child,
    this.onPressed,
    this.style,
  }) : assert(soundPath != null || defaultSound != null,
  'Either soundPath or defaultSound must be provided');

  @override
  State<SoundButton> createState() => _SoundButtonState();
}

class _SoundButtonState extends State<SoundButton> {
  late SoundPlayer _player;

  @override
  void initState() {
    super.initState();
    _player = SoundPlayer();
    _initSound();
  }

  Future<void> _initSound() async {
    final soundPath = widget.soundPath ??
        (widget.defaultSound != null
            ? defaultSoundPaths[widget.defaultSound]
            : null);
    if (soundPath != null) {
      await _player.loadSound(soundPath,
          volume: widget.volume,
          speed: widget.playbackSpeed,
          loop: widget.loopSound);
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  void _playSound() async {
    if (widget.enableHaptic) HapticFeedback.lightImpact();
    await _player.play();
    widget.onPressed?.call();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _playSound,
      style: widget.style ?? ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      child: widget.child,
    );
  }
}
