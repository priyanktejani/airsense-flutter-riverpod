import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchField extends StatelessWidget {
  const ToggleSwitchField({
    super.key,
    required this.onToggle,
    required this.labels,
  });
  final Function(int?) onToggle;
  final List<String> labels;

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: AppSizes.s84,
      initialLabelIndex: 0,
      totalSwitches: labels.length,
      borderColor: const [AppColors.silver],
      borderWidth: 1.2,
      inactiveBgColor: AppColors.lightGrey,
      activeBgColor: const [Color(0xFF050a11)],
      labels: labels,
      customTextStyles: const [
        textStyleToggleSwitch
      ],
      animate: true,
      animationDuration: 300,
      onToggle: onToggle,
    );
  }
}
