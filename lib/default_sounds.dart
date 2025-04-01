enum DefaultSound {
  click,
  beep,
  chime,
}

const Map<DefaultSound, String> defaultSoundPaths = {
  DefaultSound.click: 'assets/sounds/click.wav',
  DefaultSound.beep: 'assets/sounds/beep.mp3',
  DefaultSound.chime: 'assets/sounds/chime.ogg',
};
