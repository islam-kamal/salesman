 import 'package:flutter/material.dart';
import 'package:water/main.dart';

class Shared {
  static var height = MediaQuery.of(navigatorKey.currentContext!).size.height;
  static var width = MediaQuery.of(navigatorKey.currentContext!).size.width;
  static var portrait = MediaQuery.of(navigatorKey.currentContext!).orientation == Orientation.portrait;
 }