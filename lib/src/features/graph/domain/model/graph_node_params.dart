import 'package:airsense/src/resources/app_texts.dart';

class GraphNodeParams {
  GraphNodeParams({
    required this.siteCode,
    required this.isNO2,
    required this.startTime,
    required this.endTime,
    required this.averaging,
  })  : species = isNO2 ? AppTexts.ino2 : AppTexts.ipm25,
        startTimeString = startTime.toString(),
        endTimeString = endTime.toString();

  final bool isNO2;
  final String siteCode;
  final String species;
  final DateTime startTime;
  final DateTime endTime;
  final String startTimeString;
  final String endTimeString;
  final String averaging;

  @override
  String toString() {
    return "( $isNO2, $siteCode, $species, $startTimeString, $endTimeString, $averaging)";
  }
}
