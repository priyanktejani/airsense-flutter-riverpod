import 'dart:math';

import 'package:airsense/src/common_widgets/async_value_widget.dart';
import 'package:airsense/src/common_widgets/error_message_widget.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node_params.dart';
import 'package:airsense/src/common_widgets/primary_app_bar.dart';
import 'package:airsense/src/features/graph/presentation/graph/rotate_graph_state_provider.dart';
import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:airsense/src/features/graph/data/repository/graph_repository.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GraphScreen extends ConsumerWidget {
  const GraphScreen(
      {super.key, required this.species, required this.graphNodeParams});
  final GraphNodeParams graphNodeParams;
  final String species;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final graphNodesAsync = ref.watch(
      graphNodesProvider(graphNodeParams: graphNodeParams),
    );
    int quarterTurns = 1;

    void rotateGraph() {
      if (quarterTurns == 4) {
        quarterTurns = 1;
      } else {
        quarterTurns++;
      }
      ref.read(rotategraphStateProvider.notifier).state = quarterTurns;
    }

    return Scaffold(
      appBar: PrimaryAppBar(
        showBackButton: true,
        title: '$species ${AppTexts.graph}',
        subtitle: graphNodesAsync.hasValue ? AppTexts.appBarSubtitleGraph : '',
        onRotatePress: () {
          rotateGraph();
        },
      ),
      body: AsyncValueWidget(
        value: graphNodesAsync,
        data: (graphNodes) {
          if (graphNodes.isNotEmpty && graphNodes.length > 5) {
            return GraphContent(graphNodes: graphNodes);
          } else {
            return const Center(
              child: ErrorMessageWidget(
                AppTexts.notEnoughData,
              ),
            );
          }
        },
      ),
    );
  }
}

class GraphContent extends ConsumerStatefulWidget {
  const GraphContent({
    Key? key,
    required this.graphNodes,
  }) : super(key: key);

  final List<GraphNode> graphNodes;

  @override
  ConsumerState<GraphContent> createState() => _GraphContentState();
}

class _GraphContentState extends ConsumerState<GraphContent> {
  @override
  Widget build(BuildContext context) {
    final graphData = _generateGraphData(widget.graphNodes);

    final minY = _calculateOffset(graphData, true).toDouble();
    final maxY = _calculateOffset(graphData, false).toDouble();
    final minX = graphData.first.x;
    final maxX = graphData.last.x;

    final List<Color> gradientColors = [
      AppColors.primary,
      Colors.indigo.shade900,
    ];

    int quarterTurns = ref.watch(rotategraphStateProvider);

    return Container(
      padding: const EdgeInsets.only(
        left: AppSizes.s16,
        right: AppSizes.s24,
        top: AppSizes.s38,
        bottom: AppSizes.s54,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(32),
      ),
      child: RotatedBox(
        quarterTurns:  quarterTurns,
        child: Row(
          children: [
            const RotatedBox(
              quarterTurns: 3,
              child: Text(
                AppTexts.microgramsPerCubicMetre,
                style: textStyleMicrogramsPerCubicMetre,
              ),
            ),
            gapW12,
            Flexible(
              child: LineChart(
                  _buildLineChartData(
                    graphData,
                    minX,
                    maxX,
                    minY,
                    maxY,
                    gradientColors,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> _generateGraphData(List<GraphNode> graphNodes) {
    final graphData = graphNodes.map((node) {
      final dateTime = DateTime.parse(node.dateTime);
      final x = dateTime.millisecondsSinceEpoch.toDouble();
      final y = node.scaledValue;
      return FlSpot(x, y);
    }).toList();

    return graphData;
  }

  int _calculateOffset(List<FlSpot> graphData, bool isMin) {
    final value = graphData.fold(
      isMin ? double.infinity : -double.infinity,
      (double acc, spot) => isMin
          ? acc = acc < spot.y ? acc : spot.y
          : acc = acc > spot.y ? acc : spot.y,
    );
    return value == 0
        ? 0
        : (!isMin ? (value / 5).ceil() * 5 + 10 : value.round());
  }

  LineChartData _buildLineChartData(List<FlSpot> graphData, double minX,
      double maxX, double minY, double maxY, List<Color> gradientColors) {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        // horizontalInterval: _calculateIntervalY(minY, maxY),
        // verticalInterval: _calculateIntervalX(minX, maxX),
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: AppColors.lightGrey300,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: AppColors.lightGrey300,
            strokeWidth: 1,
          );
        },
      ),
      minX: minX,
      maxX: maxX,
      minY: minY,
      maxY: maxY,
      titlesData: FlTitlesData(
        show: true,
        rightTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: _calculateIntervalX(graphData.first.x, graphData.last.x),
            getTitlesWidget: _bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: _calculateIntervalY(minY, maxY),
            reservedSize: 46,
            getTitlesWidget: leftTitleWidgets,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(
          color: AppColors.primary.withOpacity(0.6),
          width: 1.6,
        ),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: graphData,
          isCurved: true,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  double _calculateIntervalX(double minX, double maxX) {
    final range = maxX - minX;
    const desiredIntervals = 5;
    final rawInterval = range / desiredIntervals;

    final exponent = (log(rawInterval) / ln10).floor();
    final magnitude = pow(10, exponent);

    final fraction = rawInterval / magnitude;
    double interval;

    if (fraction < 1.5) {
      interval = 1.0 * magnitude;
    } else if (fraction < 3) {
      interval = 2.0 * magnitude;
    } else if (fraction < 7) {
      interval = 5.0 * magnitude;
    } else {
      interval = 10.0 * magnitude;
    }

    return interval;
  }

  Widget _bottomTitleWidgets(double value, TitleMeta meta) {
    if (value % 1 != 0) {
      return Container();
    }
    final dateTime = DateTime.fromMillisecondsSinceEpoch(value.toInt());
    final label = '${dateTime.day}/${dateTime.month}';
    return SideTitleWidget(
      space: AppSizes.s6,
      axisSide: meta.axisSide,
      fitInside:
          SideTitleFitInsideData.fromTitleMeta(meta, distanceFromEdge: 0),
      child: Text(
        label,
        style: textStyleGraphTitle,
      ),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
   
    return SideTitleWidget(
      space: AppSizes.s6,
      axisSide: meta.axisSide,
      // fitInside: SideTitleFitInsideData.fromTitleMeta(meta),
      child: Text(
        value.toString(),
        style: textStyleGraphTitle,
        textAlign: TextAlign.center,
      ),
    );
  }

  double _calculateIntervalY(double minY, double maxY) {
    final range = maxY - minY;
    final interval = range / 5;
    return ((interval / 5).ceil() * 5);
  }
}
