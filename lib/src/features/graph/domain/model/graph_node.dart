import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_node.freezed.dart';
part 'graph_node.g.dart';

@freezed
class GraphNode with _$GraphNode {
  const factory GraphNode({
    @JsonKey(name: 'SiteCode') required String siteCode,
    @JsonKey(name: 'DateTime') required String dateTime,
    @JsonKey(name: 'DurationNS') required int durationNS,
    @Default(0.0) @JsonKey(name: 'ScaledValue') double scaledValue,
  }) = _GraphNode;

  factory GraphNode.fromJson(Map<String, dynamic> json) =>
      _$GraphNodeFromJson(json);
}