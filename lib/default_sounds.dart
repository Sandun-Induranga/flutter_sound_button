enum DefaultSound {
  click,
  beep,
  chime,
}

const Map<DefaultSound, String> defaultSoundPaths = {
  DefaultSound.click: 'packages/flutter_sound_button/assets/sounds/click.mp3',
  DefaultSound.beep: 'packages/flutter_sound_button/assets/sounds/beep.mp3',
  DefaultSound.chime: 'packages/flutter_sound_button/assets/sounds/chime.mp3'
};
