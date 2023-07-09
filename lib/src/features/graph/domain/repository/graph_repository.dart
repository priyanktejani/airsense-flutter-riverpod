import 'package:airsense/src/features/graph/domain/model/graph_node_params.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node.dart';
import 'package:airsense/src/features/graph/domain/model/site.dart';

abstract class GraphRepository {
  Future<List<Site>> fetchSites();
  Future<List<GraphNode>> fetchGraphNodes(GraphNodeParams graphNodeParams);
}
