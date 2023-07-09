// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_node_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GraphNodeResponse _$$_GraphNodeResponseFromJson(Map<String, dynamic> json) =>
    _$_GraphNodeResponse(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => GraphNode.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_GraphNodeResponseToJson(
        _$_GraphNodeResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'error': instance.error,
    };
