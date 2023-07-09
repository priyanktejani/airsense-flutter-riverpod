// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GraphNode _$$_GraphNodeFromJson(Map<String, dynamic> json) => _$_GraphNode(
      siteCode: json['SiteCode'] as String,
      dateTime: json['DateTime'] as String,
      durationNS: json['DurationNS'] as int,
      scaledValue: (json['ScaledValue'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_GraphNodeToJson(_$_GraphNode instance) =>
    <String, dynamic>{
      'SiteCode': instance.siteCode,
      'DateTime': instance.dateTime,
      'DurationNS': instance.durationNS,
      'ScaledValue': instance.scaledValue,
    };
