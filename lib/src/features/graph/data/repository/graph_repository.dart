import 'package:airsense/src/features/graph/data/source/remote/graph_remote_service.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node_params.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node_response.dart';
import 'package:airsense/src/features/graph/domain/model/site.dart';
import 'package:airsense/src/features/graph/domain/model/site_response.dart';
import 'package:airsense/src/features/graph/domain/repository/graph_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graph_repository.g.dart';

// This class implements the GraphRepository interface and provides
// functionality for fetching sites and graph nodes from a remote service.
class GraphRepositoryImpl extends GraphRepository {
  final GraphRemoteService remoteService;
  GraphRepositoryImpl({required this.remoteService});

  @override
  Future<List<Site>> fetchSites() async {
    final response = await remoteService.fetchSites();
    final sites = SiteResponse.fromJsonMapOrList(response.data);
    return sites.results;
  }

  @override
  Future<List<GraphNode>> fetchGraphNodes(
    GraphNodeParams graphNodeParams,
  ) async {
    final response = await remoteService.fetchGraphNodes(graphNodeParams);
    final graphNodes = GraphNodeResponse.fromJsonMapOrList(response.data);
    return graphNodes.results;
  }
}

@riverpod
// Provider function for creating an instance of GraphRepository
GraphRepository graphRepository(GraphRepositoryRef ref) => GraphRepositoryImpl(
      remoteService: ref.watch(graphRemoteServiceProvider),
    );

@riverpod
// Provider function for fetching a list of sites
Future<List<Site>> sites(SitesRef ref) {
  ref.keepAlive(); // Ensure the reference stays alive during recomposition
  return ref.watch(graphRepositoryProvider).fetchSites();
}

@riverpod
// Provider function for fetching a list of graph nodes
Future<List<GraphNode>> graphNodes(
  GraphNodesRef ref, {
  required GraphNodeParams graphNodeParams,
}) {
  return ref.watch(graphRepositoryProvider).fetchGraphNodes(graphNodeParams);
}
