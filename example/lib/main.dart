import 'package:flutter/material.dart';
import 'package:flutter_sound_button/flutter_sound_button.dart';
import 'package:flutter_sound_button/default_sounds.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Sound Button Example')),
        body: Center(
          // Create a SoundButton with a default sound and an onPressed callback.
          child: SoundButton(
            defaultSound: DefaultSound.click, // Use the default click sound.
            child: const Text('Click Me'), // Display a text widget inside the button.
            onPressed: () => print('Button clicked!'), // Print a message when the button is pressed.
          ),
        ),
      ),
    );
  }
}
