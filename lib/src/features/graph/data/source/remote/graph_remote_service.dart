import 'package:airsense/env/env.dart';
import 'package:airsense/src/features/graph/domain/model/graph_node_params.dart';
import 'package:airsense/src/utils/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class GraphRemoteService {
  final Dio client;
  final String apiKey;
  GraphRemoteService({required this.client, required this.apiKey});

  static const String _apiBaseUrl = 'api.breathelondon.org';
  static const String _apiPath = "/api/";

  Future<Response> fetchSites() async {
    Uri sensors = _buildUri(
      endpoint: 'ListSensors',
    );
    return await client.get(sensors.toString());
  }

  Future<Response> fetchGraphNodes(GraphNodeParams params) async {
    Uri clarityData = _buildUri(
      endpoint: 'getClarityData',
      pathSegmentsBuilder: clarityDataPathSegments(
        params.siteCode,
        params.species,
        params.startTimeString,
        params.endTimeString,
        params.averaging,
      ),
    );
    return await client.get(clarityData.toString());
  }

  Uri _buildUri({
    required String endpoint,
    List<String>? pathSegmentsBuilder,
  }) {
    final pathSegments = [_apiPath, endpoint, ...?pathSegmentsBuilder];
    return Uri(
      scheme: "https",
      host: _apiBaseUrl,
      pathSegments: pathSegments,
      queryParameters: {
        'key': apiKey,
      },
    );
  }

  List<String> clarityDataPathSegments(
    String siteCode,
    String species,
    String startTime,
    String endTime,
    String averaging,
  ) =>
      [siteCode, species, startTime, endTime, averaging];
}

final graphRemoteServiceProvider = Provider<GraphRemoteService>(
  (ref) {
    return GraphRemoteService(
      client: ref.read(dioProvider),
      apiKey: Env.breatheLondonApiKey,
    );
  },
);
