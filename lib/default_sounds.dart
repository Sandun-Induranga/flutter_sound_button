/// A collection of default sound paths for use with [SoundButton].
enum DefaultSound {
  click,
  beep,
  chime,
}

/// An enum representing the available default sounds for [SoundButton].
const Map<DefaultSound, String> defaultSoundPaths = {
  /// A short click sound, typically used for button presses.
  DefaultSound.click: 'packages/flutter_sound_button/assets/sounds/click.mp3',

  /// A beep sound, often used for alerts or confirmations.
  DefaultSound.beep: 'packages/flutter_sound_button/assets/sounds/beep.mp3',

  /// A chime sound, suitable for positive feedback or notifications.
  DefaultSound.chime: 'packages/flutter_sound_button/assets/sounds/chime.mp3'
};
