import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../widgets/gradient_button.dart';
import '../../../../core/constants/app_colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue, 
      body: Column(
        children: [

          // --- ВЕРХНЯ ЧАСТИНА ---
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

          // --- НИЖНЯ ЧАСТИНА ---
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
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textMain, 
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                  const Gap(12),
                  
                  const Text(
                    "The best way to manage your tasks and workflow.",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const Gap(40),

                  GradientButton(
                    text: "Let's Get Started",
                    onPressed: () {
                       context.go('/login');
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