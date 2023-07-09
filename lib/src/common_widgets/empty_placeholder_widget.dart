import 'package:airsense/src/features/home/presentation/widgets/outlined_icon_button.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:flutter/material.dart';

/// Placeholder widget showing a message and CTA to go back to the home screen.
class EmptyPlaceholderWidget extends StatelessWidget {
  const EmptyPlaceholderWidget({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.s16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            gapH32,
            OutlinedIconButton(
              onPressed: () => {},
              text: 'Go Home',
            )
          ],
        ),
      ),
    );
  }
}
