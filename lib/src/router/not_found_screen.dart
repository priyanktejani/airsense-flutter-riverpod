import 'package:airsense/src/common_widgets/empty_placeholder_widget.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:flutter/material.dart';

// Not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const EmptyPlaceholderWidget(
        message: AppTexts.pageNotFound,
      ),
    );
  }
}
