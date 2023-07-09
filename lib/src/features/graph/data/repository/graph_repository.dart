import 'package:airsense/src/features/graph/data/source/remote/graph_remote_service.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node_params.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node_response.dart';
import 'package:airsense/src/features/graph/domain/model/site.dart';
import 'package:airsense/src/features/graph/domain/model/site_response.dart';
import 'package:airsense/src/features/graph/domain/repository/graph_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graph_repository.g.dart';

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
GraphRepository graphRepository(GraphRepositoryRef ref) => GraphRepositoryImpl(
      remoteService: ref.watch(graphRemoteServiceProvider),
    );

@riverpod
Future<List<Site>> sites(SitesRef ref) {
  ref.keepAlive();
  return ref.watch(graphRepositoryProvider).fetchSites();
}

@riverpod
Future<List<GraphNode>> graphNodes(
  GraphNodesRef ref, {
  required GraphNodeParams graphNodeParams,
}) {
  return ref.watch(graphRepositoryProvider).fetchGraphNodes(graphNodeParams);
}
