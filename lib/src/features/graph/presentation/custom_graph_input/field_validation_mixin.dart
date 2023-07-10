import 'package:flutter/material.dart';

mixin FieldValidationMixin {
  bool validateFields(BuildContext context, String? siteCode,
      DateTime? startTime, DateTime? endTime, String averaging) {
    List<String> fieldErrors = [];
    if (siteCode == null || siteCode.isEmpty) {
      fieldErrors.add('*Site code must not be null or empty');
    }

    if (startTime == null) {
      fieldErrors.add('*Start date must not be null');
    }

    if (endTime == null) {
      fieldErrors.add('*End date must not be null');
    }

    if (averaging.isEmpty) {
      fieldErrors.add('*Average must not be empty');
    }

    if (startTime != null && endTime != null && startTime.isAfter(endTime)) {
      fieldErrors.add('*Start date must not be after end date');
    }

    if (startTime != null &&
        endTime != null &&
        startTime.isAtSameMomentAs(endTime)) {
      fieldErrors.add('*Start date and End date must not be the same');
    }

    if (fieldErrors.isNotEmpty) {
      String errorMessage = fieldErrors.join('\n');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
      return false;
    }

    return true;
  }
}
