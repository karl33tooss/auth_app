import 'package:flutter/material.dart';

class AppColors {

  static const Color scaffoldBackground = Color.fromARGB(255, 246, 246, 249); 

  static const Color headerBlue = Color.fromARGB(255, 0, 95, 143);
  static const Color primaryBlue = Color.fromARGB(255, 0, 167, 251);

  static const Color inputFieldBackground = Color.fromARGB(255, 255, 255, 255); 
  static const Color fieldShadow = Color.fromRGBO(36, 36, 36, 0.05);
  
  static const Color textMain = Color.fromARGB(255, 36, 36, 36);
  static const Color textSecondary = Color.fromARGB(255, 115, 115, 115);
  static const Color textWhite = Color.fromARGB(255, 255, 255, 255);
  
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 35, 105, 246),
      Color.fromARGB(255, 95, 159, 255),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}