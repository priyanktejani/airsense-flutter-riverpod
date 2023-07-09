import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PrimaryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final bool showBackButton;
  final VoidCallback? onRotatePress;

  const PrimaryAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    this.showBackButton = false,
    this.onRotatePress,
  });

  @override
  Size get preferredSize => const Size.fromHeight(200.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: showBackButton
          ? IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.keyboard_arrow_left,
                color: AppColors.lightGrey,
                size: AppSizes.s38,
              ),
            )
          : null,
      title: Padding(
        padding: const EdgeInsets.only(top: AppSizes.s16),
        child: Text(
          title,
          style: textStyleAppBarTitle
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: AppSizes.s4,
            right: AppSizes.s16,
          ),
          child: Visibility(
            visible: onRotatePress != null,
            child: IconButton(
              onPressed: onRotatePress,
              icon: const Icon(
                Icons.rotate_left,
                color: AppColors.lightGrey,
                size: AppSizes.s32,
              ),
            ),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(2.0),
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppSizes.s24,
            bottom: AppSizes.s48,
            right: AppSizes.s24,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: textStyleHeadLine
          ),
        ),
      ),
      toolbarHeight: 200.0,
      backgroundColor: AppColors.primary,
    );
  }
}
