import 'package:flutter/material.dart';
import 'package:flutter_sound_button/default_sounds.dart';
import 'package:flutter_sound_button/src/sound_player.dart';
import 'package:flutter/services.dart';

/// A customizable button widget that plays a sound and provides haptic feedback when pressed.
///
/// Use this widget to enhance your app's interactivity by adding sound effects
/// (either default or custom) and optional vibrations on button presses.
///
/// Example:
/// ```dart
/// SoundButton(
///   defaultSound: DefaultSound.click,
///   child: Text('Click Me'),
///   onPressed: () => print('Button clicked!'),
/// )
///

class SoundButton extends StatefulWidget {
  /// The path to a custom sound file (e.g., 'assets/sounds/custom.mp3').
  /// If provided, this overrides [defaultSound].
  final String? soundPath;

  /// The default sound to play, if [soundPath] is not provided.
  final DefaultSound? defaultSound;

  /// The volume level for sound playback (0.0 to 1.0).
  final double volume;

  /// The playback speed (e.g., 1.0 for normal, 2.0 for double speed).
  final double playbackSpeed;

  /// Whether to loop the sound.
  final bool loopSound;

  /// Whether to enable haptic feedback (vibration) on press.
  final bool enableHaptic;

  /// The callback to execute when the button is pressed.
  final VoidCallback? onPressed;

  /// The child widget to display inside the button.
  final Widget child;

  /// The style to apply to the button.
  final ButtonStyle? style;

  /// Creates a [SoundButton] with the specified properties.
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
  }) : assert(
          soundPath != null || defaultSound != null,
          'Either soundPath or defaultSound must be provided',
        );

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
      await _player.loadSound(
        soundPath,
        volume: widget.volume,
        speed: widget.playbackSpeed,
        loop: widget.loopSound,
      );
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
      style: widget.style ??
          ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
      child: widget.child,
    );
  }
}
