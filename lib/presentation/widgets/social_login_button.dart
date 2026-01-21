import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SocialLoginButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56, 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: AppColors.fieldShadow,
            blurRadius: 8,                
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppAssets.googleLogo,
                height: 24,
                width: 24,
              ),
              const Gap(10),
              const Text(
                "Continue with Google",
                style: AppTextStyles.buttonSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}