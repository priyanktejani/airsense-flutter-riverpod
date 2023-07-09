import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:flutter/material.dart';

class ElevatedIconButton extends StatelessWidget {
  const ElevatedIconButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
    this.isLoading = false,
    this.color = AppColors.primary,
    this.contentColor = AppColors.lightGrey,
  });
  final VoidCallback? onPressed;
  final String text;
  final IconData? icon;
  final bool isLoading;
  final Color? color;
  final Color? contentColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.s18,
          vertical: AppSizes.s18,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.s12),
        ),
        backgroundColor: color,
        elevation: AppSizes.s6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isLoading
              ? const CircularProgressIndicator()
              : Row(
                  children: [
                    Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: contentColor),
                    ),
                    gapW8,
                    Icon(
                      icon,
                      color: contentColor,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
