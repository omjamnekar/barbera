import 'package:flutter/widgets.dart';

class SizeFrame {
  final BuildContext context;
  SizeFrame(this.context);
  get width => MediaQuery.of(context).size.width;
  get height => MediaQuery.of(context).size.height;
}

class PaddingFrame {
  static double p10 = 10;
  static double p20 = 20;
  static double p30 = 30;
  static double p40 = 40;
  static double p50 = 50;
  static double p60 = 60;
}

class MarginFrame {
  static double m10 = 10;
  static double m20 = 20;
  static double m30 = 30;
  static double m40 = 40;
  static double m50 = 50;
  static double m60 = 60;
}
