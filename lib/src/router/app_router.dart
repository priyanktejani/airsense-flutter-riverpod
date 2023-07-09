import 'package:airsense/src/features/graph/domain/model/graph_node_params.dart';
import 'package:airsense/src/features/graph/presentation/graph/graph_screen.dart';
import 'package:airsense/src/features/home/presentation/home_screen.dart';
import 'package:airsense/src/router/not_found_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { home, customeGraphInput, graph }

final appRouterConfig = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/graph:species',
      name: AppRoute.graph.name,
      pageBuilder: (context, state) {
        final species = state.pathParameters['species'] as String;
        final graphNodeParams = state.extra as GraphNodeParams;
        return MaterialPage(
          key: state.pageKey,
          child: GraphScreen(
            species: species,
            graphNodeParams: graphNodeParams,
          ),
        );
      },
    ),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);
