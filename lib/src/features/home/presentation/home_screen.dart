import 'package:airsense/src/common_widgets/primary_button.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node_params.dart';
import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:airsense/src/features/home/presentation/widgets/outlined_icon_button.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // generate south kensington graph (if isNO2 = false than PM25)
    Future<void> generate(bool isNO2) async {
      final graphNodeParams = GraphNodeParams(
        siteCode: 'CLDP0098',
        isNO2: isNO2,
        startTime: DateTime(2023, 1, 1),
        endTime: DateTime(2023, 6, 30),
        averaging: 'Hourly',
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.s22,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Displaying the application name and head line
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: '${AppTexts.appName} ${AppTexts.appEmoji}\n',
                style: textStyleAppName,
                children: [
                  TextSpan(text: AppTexts.headLine, style: textStyleHeadLine),
                ],
              ),
            ),
            gapH48,

            // // Buttons
            ElevatedIconButton(
              onPressed: () {
                generate(true);
              },
              text: '${AppTexts.southKensington} ${AppTexts.no2}',
              icon: Icons.train_outlined,
              color: Colors.white,
              contentColor: AppColors.primary,
            ),
            gapH16,
            ElevatedIconButton(
              onPressed: () {
                generate(false);
              },
              text: '${AppTexts.southKensington} ${AppTexts.pm25}',
              icon: Icons.train_outlined,
              color: Colors.white,
              contentColor: AppColors.primary,
            ),
            gapH16,
            OutlinedIconButton(
              onPressed: () {},
              text: '${AppTexts.custome} ${AppTexts.customeEmoji}',
            ),
          ],
        ),
      ),
    );
  }
}