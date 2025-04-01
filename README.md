# Flutter Sound Button

A customizable Flutter widget that creates buttons with sound effects. Play default sounds like clicks, beeps, or chimes, or add your own custom audio files—all with a simple API. Enhance your app’s interactivity with adjustable volume, playback speed, haptic feedback, and more!

[![Pub Version](https://img.shields.io/pub/v/flutter_sound_button)](https://pub.dev/packages/flutter_sound_button)  
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

---

## Features

- **Default Sounds**: Preloaded options including `click`, `beep`, and `chime`.
- **Custom Sounds**: Load your own audio files from assets or file paths.
- **Sound Customization**: Adjust volume, playback speed, and looping behavior.
- **Haptic Feedback**: Optional vibration on press for a tactile experience.
- **Styling**: Fully customizable button appearance (shape, color, icons, etc.).
- **Lightweight**: Built with `just_audio` for efficient audio playback.

---

## Installation

Add `flutter_sound_button` to your project by including it in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_sound_button: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

## How to Use It

Get started quickly by using one of the preloaded sounds. Import the package and add a `SoundButton` to your widget tree:

```dart
import 'package:flutter_sound_button/flutter_sound_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Sound Button Demo')),
        body: Center(
          child: SoundButton(
            defaultSound: DefaultSound.click, // Plays the default "click" sound
            child: Text('Click Me'),
            onPressed: () => print('Button clicked!'),
          ),
        ),
      ),
    );
  }
}
```

### Custom Sounds

You can also use your own audio files:

```dart
SoundButton(
  soundPath: SoundButtonSound.custom("assets/sounds/custom_sound.mp3"),
  volume: 0.8,
  playbackSpeed: 1.2,
  enableHaptic: true,
  onPressed: () {
    print("Custom Sound Button Pressed!");
  },
)
```

---

## Customization

The `SoundButton` widget allows full customization:

```dart
SoundButton(
  defaultSound: DefaultSound.chime,
  volume: 0.5, // Half volume
  playbackSpeed: 0.8, // Slower playback
  loopSound: true, // Loops until stopped
  enableHaptic: false, // No vibration
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    elevation: 5,
  ),
  child: Text('Looping Chime', style: TextStyle(color: Colors.white)),
  onPressed: () => print('Chime started looping!'),
)
```

---

## Configuration

### Properties

| Property        | Type            | Description                                      | Default       |
| --------------- | --------------- | ------------------------------------------------ | ------------- |
| `soundPath`     | `String?`       | Path to a custom audio file (e.g., MP3, WAV).    | `null`        |
| `defaultSound`  | `DefaultSound?` | Preloaded sound option.                          | `null`        |
| `volume`        | `double`        | Playback volume (0.0 to 1.0).                    | `1.0`         |
| `playbackSpeed` | `double`        | Playback speed (e.g., 1.0 = normal, 2.0 = fast). | `1.0`         |
| `loopSound`     | `bool`          | Whether to loop the sound.                       | `false`       |
| `enableHaptic`  | `bool`          | Enable haptic feedback on press.                 | `true`        |
| `onPressed`     | `VoidCallback?` | Action to execute after sound plays.             | `null`        |
| `child`         | `Widget`        | Button content (text, icon, etc.).               | Required      |
| `style`         | `ButtonStyle?`  | Custom styling for the button.                   | Default style |


---


## Dependencies

This package relies on the [`just_audio`](https://pub.dev/packages/just_audio) package for audio playback.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Contributions

Contributions are welcome! Feel free to open an issue or submit a pull request on [GitHub](https://github.com/Sandun-Induranga/flutter_sound_button).

---

## Support

For questions, suggestions, or bug reports, please open an issue on the [GitHub repository](https://github.com/Sandun-Induranga/flutter_sound_button).




# Flutter Sound Button

A customizable Flutter widget that creates buttons with sound effects. Play default sounds like clicks, beeps, or chimes, or add your own custom audio files—all with a simple API. Enhance your app’s interactivity with adjustable volume, playback speed, haptic feedback, and more!

\


---

## Features

- **Default Sounds**: Preloaded options including `click`, `beep`, and `chime`.
- **Custom Sounds**: Load your own audio files from assets or file paths.
- **Sound Customization**: Adjust volume, playback speed, and looping behavior.
- **Haptic Feedback**: Optional vibration on press for a tactile experience.
- **Styling**: Fully customizable button appearance (shape, color, icons, etc.).
- **Lightweight**: Built with `just_audio` for efficient audio playback.

---

## Installation

Add `flutter_sound_button` to your project by including it in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_sound_button: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

## How to Use It

Get started quickly by using one of the preloaded sounds. Import the package and add a `SoundButton` to your widget tree:

```dart
import 'package:flutter_sound_button/flutter_sound_button.dart';

SoundButton(
  sound: SoundButtonSound.click, // Use built-in sounds like click, beep, or chime
  onPressed: () {
    print("Button Pressed!");
  },
)
```

### Custom Sounds

You can also use your own audio files:

```dart
SoundButton(
  sound: SoundButtonSound.custom("assets/sounds/custom_sound.mp3"),
  volume: 0.8,
  playbackSpeed: 1.2,
  hapticFeedback: true,
  onPressed: () {
    print("Custom Sound Button Pressed!");
  },
)
```

---

## Customization

The `SoundButton` widget allows full customization:

```dart
SoundButton(
  sound: SoundButtonSound.beep,
  volume: 1.0,
  playbackSpeed: 1.0,
  hapticFeedback: true,
  shape: BoxShape.circle,
  color: Colors.blue,
  icon: Icons.volume_up,
  onPressed: () {
    print("Beep Button Pressed!");
  },
)
```



## Dependencies

This package relies on the [`just_audio`](https://pub.dev/packages/just_audio) package for audio playback.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Contributions

Contributions are welcome! Feel free to open an issue or submit a pull request on [GitHub](https://github.com/your-repo/flutter_sound_button).

---

## Support

For questions, suggestions, or bug reports, please open an issue on the [GitHub repository](https://github.com/your-repo/flutter_sound_button).

