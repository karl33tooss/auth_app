import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/gradient_button.dart';
import '../widgets/social_login_button.dart';
import '../../core/utils/app_validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false; // Checkbox State
  final _formKey = GlobalKey<FormState>();

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
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome Back!", style: AppTextStyles.titleLarge),
                          Text(
                            "Please enter your details",
                            style: AppTextStyles.titleMedium,
                          ),

                          const SizedBox(height: 25),

                          // --- 1. Email ---
                          const Text(
                            "Email/Phone number",
                            style: AppTextStyles.bodyLarge,
                          ),

                          const SizedBox(height: 8),

                          const CustomTextField(
                            hintText: "pearl@harbour.com",
                            prefixIcon: Icons.email_outlined,
                            validator: AppValidators.validateEmail,
                          ),

                          const SizedBox(height: 20),

                          // --- 2. Password ---
                          const Text("Password", style: AppTextStyles.bodyLarge),

                          const SizedBox(height: 8),

                          const CustomTextField(
                            hintText: "••••••••",
                            prefixIcon: Icons.lock_outline,
                            isPassword: true,
                            validator: AppValidators.validatePassword,
                          ),

                          const SizedBox(height: 10),

                          // --- 3. Remember Me & Forgot Password ---
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

                              const SizedBox(height: 8),

                              const Text(
                                "Remember me",
                                style: AppTextStyles.bodyLarge,
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {}, // Поки пустий
                                child: const Text(
                                  "Forgot password?",
                                  style: AppTextStyles.link,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // --- 4. Login Button ---
                          GradientButton(
                            text: "Sign in",
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print("Login Validated!");
                              }
                            },
                          ),

                          const SizedBox(height: 20),

                          // --- 5. Divider ---
                          const Row(
                            children: [
                              Expanded(
                                child: Divider(color: AppColors.borderGrey),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text("or", style: AppTextStyles.bodyLarge),
                              ),
                              Expanded(
                                child: Divider(color: AppColors.borderGrey),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // --- 6. Google Button ---
                          SocialLoginButton(
                            onPressed: () {
                              print("Google login");
                            },
                          ),

                          const Spacer(),
                          // --- 7. Sign Up Link ---
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account? ",
                                style: AppTextStyles.bodyLarge,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.go('/register');
                                },
                                child: const Text(
                                  "Create an account",
                                  style: AppTextStyles.action,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
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
