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

  // Custom graph screen
  static const appBarSubtitleCustom =
      'Harness the Power of Data: Enter The Information for Detailed Air Quality Graphs!';
  static const startDate = 'Start date';
  static const endDate = 'End date';
  static const average = 'Average (Hourly)';
  static const generate = 'Generate';
  static const sitecodeOrName = 'Site name or code';

  // Graph screen
  static const graph = 'graph';
  static const notEnoughData = 'Not enough data for analysis.';
  static const appBarSubtitleGraph =
      'Graph presents air quality measurements. Identify patterns and make informed choices for your health.';
  static const microgramsPerCubicMetre = 'µg\\m3';
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

const textStyleAutoCompleteTitle = TextStyle(
  fontSize: AppSizes.s20,
  color: AppColors.lightGrey,
);

const textStyleAutoCompleteSubTitle = TextStyle(
  fontSize: AppSizes.s14,
  color: AppColors.silver,
);

const textStyleToggleSwitch = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: AppSizes.s18,
);

const textStyleAppBarTitle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: AppSizes.s34,
  color: AppColors.lightGrey,
);

const textStyleForm = TextStyle(
  fontSize: AppSizes.s20,
  fontWeight: FontWeight.w300,
);

const textStyleMicrogramsPerCubicMetre = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: AppSizes.s16,
  color: AppColors.primary,
);

const textStyleGraphTitle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: AppSizes.s14,
  color: Color.fromRGBO(33, 33, 33, 1),
);
