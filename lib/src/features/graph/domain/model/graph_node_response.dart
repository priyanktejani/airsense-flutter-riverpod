import 'package:airsense/src/features/graph/domain/model/graph_node.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_node_response.freezed.dart';
part 'graph_node_response.g.dart';

@freezed
class GraphNodeResponse with _$GraphNodeResponse {
  factory GraphNodeResponse({
    @Default([]) List<GraphNode> results,
    String? error,
  }) = _GraphNodeResponse;

  factory GraphNodeResponse.fromJsonMapOrList(dynamic json) {
    if (json is List<dynamic>) {
      return GraphNodeResponse.fromJson({'results': json});
    } else if (json is Map<String, dynamic> && json.containsKey('error')) {
      return GraphNodeResponse.fromJson(json);
    } else {
      throw ArgumentError('Invalid JSON structure for GraphNodeResponse');
    }
  }

  factory GraphNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$GraphNodeResponseFromJson(json);
}

extension GraphNodeResponseX on GraphNodeResponse {
  //@late
  bool get isEmpty => !hasResults();

  bool hasResults() {
    return results.isNotEmpty;
  }

  bool hasErrors() {
    return error != null;
  }
}