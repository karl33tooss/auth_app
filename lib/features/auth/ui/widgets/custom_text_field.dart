import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon; // Іконка зліва (конверт, замок)
  final bool isPassword;     // Чи це поле для пароля
  final TextEditingController? controller;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    this.controller,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.inputFieldBackground, 
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: AppColors.fieldShadow,
            blurRadius: 8,                
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPassword ? _obscureText : false,
        keyboardType: widget.keyboardType,
        style: GoogleFonts.inter(
          fontSize: 15,
          color: AppColors.textMain,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: GoogleFonts.inter(
            color: AppColors.textSecondary,
            fontSize: 15,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 13.5),
          
          prefixIcon: Icon(
            widget.prefixIcon,
            color: AppColors.textSecondary,
            size: 20,
          ),
          
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    color: AppColors.textSecondary,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}