import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/gradient_button.dart';
import '../widgets/social_login_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _rememberMe = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.headerBlue,
      body: Column(
        children: [
          const Expanded(flex: 1, child: SizedBox()),

          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
              decoration: const BoxDecoration(
                color: AppColors.scaffoldBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(
                        "Create account",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textMain,
                        ),
                      ),
                    Text(
                        "Please enter your details",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    const Gap(25),

                    // --- 1. Username Field ---
                    const Text(
                      "Username",
                      style: TextStyle(
                        color: AppColors.textMain,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Gap(8),
                    const CustomTextField(
                      hintText: "pearl@harbour.com",
                      prefixIcon: Icons.person_outline,
                    ),
                    
                    const Gap(16),

                    const Text(
                      "Email",
                      style: TextStyle(
                        color: AppColors.textMain,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Gap(8),
                    const CustomTextField(
                      hintText: "pearl@harbour.com",
                      prefixIcon: Icons.email_outlined,
                    ),

                    const Gap(16),

                    const Text(
                      "Phone number",
                      style: TextStyle(
                        color: AppColors.textMain,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Gap(8),
                    const CustomTextField(
                      hintText: "pearl@harbour.com",
                      prefixIcon: Icons.phone_android_outlined, 
                      keyboardType: TextInputType.phone,
                    ),

                    const Gap(16),

                    const Text(
                      "Password",
                      style: TextStyle(
                        color: AppColors.textMain,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Gap(8),
                    const CustomTextField(
                      hintText: "••••••••",
                      prefixIcon: Icons.lock_outline,
                      isPassword: true,
                    ),

                    const Gap(10),

                    Row(
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: _rememberMe,
                            activeColor: AppColors.primaryBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            onChanged: (val) {
                              setState(() {
                                _rememberMe = val ?? false;
                              });
                            },
                          ),
                        ),
                        const Gap(8),
                        const Text(
                          "Remember me",
                          style: TextStyle(color: AppColors.textSecondary),
                        ),
                      ],
                    ),

                    const Gap(20),

                    GradientButton(
                      text: "Create account",
                      onPressed: () {
                        print("Create account clicked");
                      },
                    ),

                    const Gap(20),

                    const Row(
                      children: [
                        Expanded(child: Divider(color: AppColors.borderGrey)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "or",
                            style: TextStyle(
                              color: AppColors.textMain,
                              fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(child: Divider(color: AppColors.borderGrey)),
                      ],
                    ),

                    const Gap(20),

                    SocialLoginButton(
                      onPressed: () {
                        print("Google sign up");
                      },
                    ),

                    const Gap(30), 

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: AppColors.textMain,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.go('/login');
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              color: AppColors.primaryBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Gap(20), 
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}