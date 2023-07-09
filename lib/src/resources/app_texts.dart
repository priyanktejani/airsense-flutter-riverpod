import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTexts {
  static const appName = 'airSense';
  static const appEmoji = '💨';

  static const pageNotFound = '404 - Page not found!';
  static const no2 = 'NO2';
  static const pm25 = 'PM25';
  static const ino2 = 'INO2';
  static const ipm25 = 'IPM25';
  static const custome = 'Custome';
  static const customeEmoji = '📝';

  // Home screen
  static const headLine =
      'Monitor, Analyze, and Act for Cleaner Living Spaces - Your Window to Fresher Air.';
  static const southKensington = 'South kensington';
}

/// Text styles
const textStyleAppName = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: AppSizes.s50,
  color: AppColors.lightGrey,
);

const textStyleHeadLine = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: AppSizes.s16,
  color: AppColors.lightGrey,
);
