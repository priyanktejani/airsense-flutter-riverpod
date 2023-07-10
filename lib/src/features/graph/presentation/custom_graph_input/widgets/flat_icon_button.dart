import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:flutter/material.dart';

class FlatIconButton extends StatelessWidget {
  const FlatIconButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
    required this.hasInput,
    this.isLoading = false,
  });
  final VoidCallback? onPressed;
  final String text;
  final IconData? icon;
  final bool isLoading;
  final bool hasInput;

  @override
  Widget build(BuildContext context) {
    final Color contentColor =
        hasInput ? AppColors.primary : AppColors.darkGray;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.s18,
          vertical: AppSizes.s18,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.silver),
          borderRadius: BorderRadius.circular(AppSizes.s12),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.edit_calendar_outlined,
            color: AppColors.darkGray,
            size: AppSizes.s28,
          ),
          gapW8,
          Text(
            text,
            textAlign: TextAlign.center,
            style: textStyleForm.copyWith(
              color: contentColor,
            ),
          ),
        ],
      ),
    );
  }
}
