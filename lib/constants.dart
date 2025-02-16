import 'package:flutter/material.dart';

class Constants {
  static const String title ="pokedex"; 

  static TextStyle getTitleTextStyle(){
    return const TextStyle(
      color:  Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48,
    );
  }
}