import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:halpay/shared/theme/app_colors.dart';
import 'package:halpay/shared/theme/text_styles.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController? controller;
  final bool isDigitOnly;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final Widget? suffixIcon;
  final String? suffixText;
  final String? hintText;
  const AppTextField({
    super.key,
    this.controller,
    this.isDigitOnly=false,
    this.suffixIconColor,
    this.suffixIcon,
    this.suffixText,
    this.hintText,
    this.prefixIcon
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      inputFormatters: widget.isDigitOnly ? [
        FilteringTextInputFormatter.digitsOnly,
        FilteringTextInputFormatter.allow(
            RegExp(r'[0-9.]')),
      ] : [],
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color:  AppColors.textFieldBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: AppColors.textFieldBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: AppColors.textFieldBorder),
        ),
        hintText: widget.hintText,
        hintStyle: AppTextStyles.hintStyle,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.00),

        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        suffixText: widget.suffixText,
        suffixStyle: AppTextStyles.suffixStyle,

      ),
      style: AppTextStyles.bodyLg,
    );
  }
}
