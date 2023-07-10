import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:flutter/material.dart';

class TextIconField extends StatelessWidget {
  const TextIconField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.focusNode,
    this.enabled,
    this.onSubmitted,
  });
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final FocusNode? focusNode;
  final bool? enabled;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.text,
      obscureText: false,
      enabled: enabled,
      maxLines: 1,
      onSubmitted: onSubmitted,
      style: textStyleForm,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSizes.s18,
          vertical: AppSizes.s18,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: AppSizes.s8),
          child: Icon(
            prefixIcon,
            color: AppColors.darkGray,
            size: AppSizes.s28,
          ),
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: AppSizes.s50,
          minHeight: 0,
        ),
        hintText: hintText,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.silver),
      borderRadius: BorderRadius.circular(AppSizes.s12),
    );
  }
}
