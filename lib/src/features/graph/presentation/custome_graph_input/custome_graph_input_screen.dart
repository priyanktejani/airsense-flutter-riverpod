import 'package:airsense/src/common_widgets/async_value_widget.dart';
import 'package:airsense/src/common_widgets/primary_button.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node_params.dart';
import 'package:airsense/src/features/graph/presentation/custome_graph_input/field_validation_mixin.dart';
import 'package:airsense/src/features/graph/presentation/custome_graph_input/products_search_state_provider.dart';
import 'package:airsense/src/features/graph/presentation/custome_graph_input/widgets/auto_complete_field.dart';
import 'package:airsense/src/common_widgets/primary_app_bar.dart';
import 'package:airsense/src/features/graph/presentation/custome_graph_input/widgets/flat_icon_button.dart';
import 'package:airsense/src/features/graph/presentation/custome_graph_input/widgets/text_icon_field.dart';
import 'package:airsense/src/features/graph/presentation/custome_graph_input/widgets/toggle_switch_field.dart';
import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:airsense/src/features/graph/data/repository/graph_repository.dart';
import 'package:airsense/src/features/graph/domain/model/site.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:airsense/src/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomeGraphInputScreen extends ConsumerWidget {
  const CustomeGraphInputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sitesAsync = ref.watch(sitesProvider);
    return Scaffold(
      appBar: PrimaryAppBar(
        showBackButton: true,
        title: '${AppTexts.custome} ${AppTexts.customeEmoji}',
        subtitle: sitesAsync.hasValue ? AppTexts.appBarSubtitleCustom : '',
      ),
      body: AsyncValueWidget(
        value: sitesAsync,
        data: (sites) => CustomGraphInputContents(sites: sites),
      ),
    );
  }
}

class CustomGraphInputContents extends ConsumerStatefulWidget {
  const CustomGraphInputContents({
    Key? key,
    required this.sites,
  }) : super(key: key);

  final List<Site> sites;

  @override
  ConsumerState<CustomGraphInputContents> createState() =>
      _CustomGraphInputContentsState();
}

class _CustomGraphInputContentsState
    extends ConsumerState<CustomGraphInputContents> with FieldValidationMixin {
  final currentDateTime = DateTime.now();
  final _averageController = TextEditingController();
  bool isNO2 = true;
  DateTime? startTimeState;
  DateTime? endTimeState;
  String? siteCode;
  String get averaging => _averageController.text;

  @override
  void dispose() {
    _averageController.dispose();
    super.dispose();
  }

  Future<void> _generate() async {
    if (validateFields(
        context, siteCode, startTimeState, endTimeState, averaging)) {
      final graphNodeParams = GraphNodeParams(
        siteCode: siteCode!,
        isNO2: isNO2,
        startTime: startTimeState!,
        endTime: endTimeState!,
        averaging: averaging,
      );

      final String species = isNO2 ? AppTexts.no2 : AppTexts.pm25;
      context.pushNamed(
        AppRoute.graph.name,
        pathParameters: {'species': species},
        extra: graphNodeParams,
      );
    }
  }

  Future<DateTime?> _showDatePicker() async {
    return showDatePicker(
      context: context,
      initialDate: currentDateTime,
      firstDate: DateTime(2021, 8),
      lastDate: currentDateTime,
    );
  }

  Future<TimeOfDay?> _showTimePicker() async {
    return showTimePicker(
      context: context,
      initialTime: TimeOfDay(
        hour: currentDateTime.hour,
        minute: currentDateTime.minute,
      ),
    );
  }

  Future<DateTime?> _showDateTimePicker() async {
    final date = await _showDatePicker();
    if (date == null) return null;

    final time = await _showTimePicker();
    if (time == null) return null;

    return DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
  }

  @override
  Widget build(BuildContext context) {
    startTimeState = ref.watch(startTimeStateProvider);
    endTimeState = ref.watch(endTimeStateProvider);

    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: AppSizes.s28, horizontal: AppSizes.s28),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(AppSizes.s32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ToggleSwitchField(
            onToggle: (index) {
              isNO2 = (index == 0);
            },
            labels: const [AppTexts.no2, AppTexts.pm25],
          ),
          gapH16,
          AutoCompleteField(
            sites: widget.sites,
            onOptionSelected: (selection) {
              siteCode = selection.siteCode;
            },
          ),
          gapH16,
          FlatIconButton(
            onPressed: () async {
              ref.read(startTimeStateProvider.notifier).state =
                  await _showDateTimePicker();
            },
            text: startTimeState?.toString() ?? AppTexts.startDate,
            icon: Icons.edit_calendar_outlined,
            hasInput: startTimeState != null,
          ),
          gapH16,
          FlatIconButton(
            onPressed: () async {
              ref.read(endTimeStateProvider.notifier).state =
                  await _showDateTimePicker();
            },
            text: endTimeState?.toString() ?? AppTexts.endDate,
            icon: Icons.edit_calendar_outlined,
            hasInput: endTimeState != null,
          ),
          gapH16,
          TextIconField(
            controller: _averageController,
            hintText: AppTexts.average,
            prefixIcon: Icons.legend_toggle_outlined,
          ),
          gapH32,
          ElevatedIconButton(
            onPressed: _generate,
            text: AppTexts.generate,
            icon: Icons.grain_outlined,
          ),
        ],
      ),
    );
  }
}
