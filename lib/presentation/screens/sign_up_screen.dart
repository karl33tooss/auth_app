import 'package:auth_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/app_colors.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/gradient_button.dart';
import '../widgets/social_login_button.dart';
import '../../core/utils/app_validators.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _rememberMe = false;
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
                          Text("Create account", style: AppTextStyles.titleLarge),
                          Text(
                            "Please enter your details",
                            style: AppTextStyles.titleMedium,
                          ),

                          const SizedBox(height: 25),

                          // --- 1. Username Field ---
                          const Text("Username", style: AppTextStyles.bodyLarge),

                          const SizedBox(height: 8),

                          const CustomTextField(
                            hintText: "pearl@harbour.com",
                            prefixIcon: Icons.person_outline,
                            validator: AppValidators.validateUsername,
                          ),

                          const SizedBox(height: 16),

                          const Text("Email", style: AppTextStyles.bodyLarge),

                          const SizedBox(height: 8),

                          const CustomTextField(
                            hintText: "pearl@harbour.com",
                            prefixIcon: Icons.email_outlined,
                            validator: AppValidators.validateEmail,
                          ),

                          const SizedBox(height: 16),

                          const Text("Phone number", style: AppTextStyles.bodyLarge),

                          const SizedBox(height: 8),

                          const CustomTextField(
                            hintText: "pearl@harbour.com",
                            prefixIcon: Icons.phone_android_outlined,
                            keyboardType: TextInputType.phone,
                            validator: AppValidators.validatePhone,
                          ),

                          const SizedBox(height: 16),

                          const Text("Password", style: AppTextStyles.bodyLarge),

                          const SizedBox(height: 8),

                          const CustomTextField(
                            hintText: "••••••••",
                            prefixIcon: Icons.lock_outline,
                            isPassword: true,
                            validator: AppValidators.validatePassword,
                          ),

                          const SizedBox(height: 10),

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
                            ],
                          ),

                          const SizedBox(height: 20),

                          GradientButton(
                            text: "Create account",
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print("Sign Up Validated!");
                              }
                            },
                          ),

                          const SizedBox(height: 20),

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

                          SocialLoginButton(
                            onPressed: () {
                              print("Google sign up");
                            },
                          ),

                          const SizedBox(height: 20,),

                          const Spacer(),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Already have an account? ",
                                style: AppTextStyles.bodyLarge,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.go('/login');
                                },
                                child: const Text(
                                  "Sign in",
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
