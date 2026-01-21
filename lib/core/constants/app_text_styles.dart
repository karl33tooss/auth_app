import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle button = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
  );

  static const TextStyle buttonSecondary = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textMain,
    fontFamily: 'Inter',
  );

  static const TextStyle textFieldError = TextStyle(
    color: Colors.redAccent,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
  );

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textMain,
    fontFamily: 'Inter',
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 16,
    color: AppColors.textSecondary,
    fontFamily: 'Inter',
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.textMain,
    fontFamily: 'Inter',
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    fontFamily: 'Inter',
  );

  static const TextStyle bodyLarge = TextStyle(
    color: AppColors.textMain,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
  );

  static const TextStyle link = TextStyle(
    color: AppColors.primaryBlue,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    decoration: TextDecoration.underline,
    decorationColor: AppColors.primaryBlue,
  );

  static const TextStyle action = TextStyle(
    color: AppColors.primaryBlue,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
  );
}
