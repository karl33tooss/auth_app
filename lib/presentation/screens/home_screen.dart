import 'package:auth_app/core/constants/app_text_styles.dart';
import 'package:auth_app/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/gradient_button.dart';
import '../../core/constants/app_colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Header
      backgroundColor: AppColors.primaryBlue, 
      body: Column(
        children: [
          // Top part
          Expanded(
            flex: 1, 
            child: Center(
              child: Icon(
                Icons.lock_person_rounded, 
                size: 80, 
                color: Colors.white.withValues(alpha: 0.9),
              ),
            ),
          ),

          // Bottom part
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity, 
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              decoration: const BoxDecoration(
                color: AppColors.scaffoldBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), 
                  topRight: Radius.circular(30), 
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  const Text(
                    "Welcome to Auth App",
                    style: AppTextStyles.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  
                  const SizedBox(height: 12),
                  
                  const Text(
                    "The best way to manage your tasks and workflow.",
                    style: AppTextStyles.headlineMedium,
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40),

                  GradientButton(
                    text: "Let's Get Started",
                    onPressed: () {
                       context.go(AppRoutes.login);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}