import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorApp());
}

/// Generates random opaque color
Color generateRandomColor() =>
    Color(math.Random().nextInt(0x1000000) | 0xFF000000);

/// Generates inverted opaque color
Color invertColor(Color color) => Color(~color.value | 0xFF000000);

/// This widget is the root of application
class ColorApp extends StatelessWidget {
  const ColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      home: ColorPage(),
    );
  }
}

/// This widget is the main page of application
class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    // Change _backgroundColor variable to random color value
    // and update widget state to change it`s background color
    setState(() {
      _backgroundColor = generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(color: _backgroundColor),
          child: Center(
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 250),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: invertColor(_backgroundColor),
              ),
              child: const Text('Hey there'),
            ),
          ),
        ),
      ),
    );
  }
}
