// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$graphRepositoryHash() => r'f4d28ffe991e6209eecbc747c543e4ddb4689108';

/// See also [graphRepository].
@ProviderFor(graphRepository)
final graphRepositoryProvider = AutoDisposeProvider<GraphRepository>.internal(
  graphRepository,
  name: r'graphRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$graphRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GraphRepositoryRef = AutoDisposeProviderRef<GraphRepository>;
String _$sitesHash() => r'c12e4285cfddc0a7f50e890124ef4d88a976eaee';

/// See also [sites].
@ProviderFor(sites)
final sitesProvider = AutoDisposeFutureProvider<List<Site>>.internal(
  sites,
  name: r'sitesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sitesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SitesRef = AutoDisposeFutureProviderRef<List<Site>>;
String _$graphNodesHash() => r'938a84c4a7990d699d0b6812ccdae0050341394d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GraphNodesRef = AutoDisposeFutureProviderRef<List<GraphNode>>;

/// See also [graphNodes].
@ProviderFor(graphNodes)
const graphNodesProvider = GraphNodesFamily();

/// See also [graphNodes].
class GraphNodesFamily extends Family<AsyncValue<List<GraphNode>>> {
  /// See also [graphNodes].
  const GraphNodesFamily();

  /// See also [graphNodes].
  GraphNodesProvider call({
    required GraphNodeParams graphNodeParams,
  }) {
    return GraphNodesProvider(
      graphNodeParams: graphNodeParams,
    );
  }

  @override
  GraphNodesProvider getProviderOverride(
    covariant GraphNodesProvider provider,
  ) {
    return call(
      graphNodeParams: provider.graphNodeParams,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'graphNodesProvider';
}

/// See also [graphNodes].
class GraphNodesProvider extends AutoDisposeFutureProvider<List<GraphNode>> {
  /// See also [graphNodes].
  GraphNodesProvider({
    required this.graphNodeParams,
  }) : super.internal(
          (ref) => graphNodes(
            ref,
            graphNodeParams: graphNodeParams,
          ),
          from: graphNodesProvider,
          name: r'graphNodesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$graphNodesHash,
          dependencies: GraphNodesFamily._dependencies,
          allTransitiveDependencies:
              GraphNodesFamily._allTransitiveDependencies,
        );

  final GraphNodeParams graphNodeParams;

  @override
  bool operator ==(Object other) {
    return other is GraphNodesProvider &&
        other.graphNodeParams == graphNodeParams;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, graphNodeParams.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
