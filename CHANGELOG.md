# Changelog

All notable changes to `flutter_sound_button` will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
- Planned features:
  - Add support for recording custom sounds via microphone.
  - Introduce multi-sound randomization (e.g., play a random sound from a list).
  - Sync sound playback with button press animations (e.g., scale or bounce effects).

## [0.0.7] - 2025-04-04

### Changed
- Updated Sound Files
  - Replaced `click.mp3`, `beep.mp3`, and `chime.mp3` with higher quality versions.

## [0.0.6] - 2025-04-02

### Added
- Dartdoc comments for public API elements to improve documentation coverage (e.g., `SoundButton`, `DefaultSound`, `defaultSoundPaths`).
- Example app in the `example/` directory to demonstrate usage of `flutter_sound_button`.
- Exported `default_sounds.dart` in `flutter_sound_button.dart` to make `DefaultSound` accessible without additional imports.

### Changed
- Updated `README.md` to include instructions for declaring package assets in the user's `pubspec.yaml`.

### Fixed
- Resolved static analysis issues to improve code quality and pass all lint checks.
- Fixed `DefaultSound` import issue in the example app by exporting `default_sounds.dart`.

## [0.0.1] - 2025-04-01

### Added
- Initial release of `flutter_sound_button`.
- Core functionality:
  - `SoundButton` widget with configurable sound effects on press.
  - Default sound options: `click`, `beep`, and `chime` (bundled as assets).
  - Support for custom sound files via `soundPath` (e.g., MP3, WAV from assets).
- Customization options:
  - `volume` (0.0 to 1.0) for sound loudness.
  - `playbackSpeed` (e.g., 1.0 = normal, 2.0 = fast) for sound tempo.
  - `loopSound` to enable continuous playback.
  - `enableHaptic` for optional haptic feedback on press.
  - `style` to customize button appearance using `ButtonStyle`.
  - `onPressed` callback for additional actions after sound plays.
- Included default sound assets:
  - `assets/sounds/click.mp3`
  - `assets/sounds/beep.mp3`
  - `assets/sounds/chime.mp3`
- Dependency on `just_audio` (^0.9.36) for efficient audio playback.
- Basic documentation in `README.md` with usage examples.

### Changed
- N/A (initial release).

### Deprecated
- N/A (initial release).

### Removed
- N/A (initial release).

### Fixed
- N/A (initial release).

### Security
- N/A (initial release).

---

## Notes
- This is the first version of `flutter_sound_button`, designed to enhance Flutter apps with interactive sound effects.
- Future updates may
- 