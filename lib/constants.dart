import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  static const String title = "pokedex";

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48),
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(24),
    );
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1).sp;
    }
  }

  static getPokemonInfoTextStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(16),
      color: Colors.black,
    );
  }
  static getPokemonInfolabelTextStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(20),
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }
}
