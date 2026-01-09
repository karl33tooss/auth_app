import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      
      textTheme: GoogleFonts.interTextTheme(
        ThemeData.light().textTheme,
      ),
      
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryBlue,
        surface: Colors.white,
        onSurface: AppColors.textMain, 
      ),
      
      useMaterial3: true,
    );
  }
}