import 'package:flutter/material.dart';

class ColorFrame {
  Color getBlackShade(BuildContext context) {
    Brightness currentBrightness = Theme.of(context).brightness;
    return currentBrightness == Brightness.dark
        ? const Color.fromARGB(255, 255, 255, 255)
        : const Color.fromARGB(255, 0, 0, 0);
  }

  Color getWhiteShade(BuildContext context) {
    Brightness currentBrightness = Theme.of(context).brightness;
    return currentBrightness == Brightness.dark
        ? const Color.fromARGB(255, 0, 0, 0)
        : const Color.fromARGB(255, 255, 255, 255);
  }
}
