import 'package:airsense/src/features/graph/domain/model/graph_node_params.dart';
import 'package:airsense/src/features/graph/presentation/custom_graph_input/custom_graph_input_screen.dart';
import 'package:airsense/src/features/graph/presentation/graph/graph_screen.dart';
import 'package:airsense/src/features/home/presentation/home_screen.dart';
import 'package:airsense/src/router/not_found_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Enumeration of the available app routes.
enum AppRoute { home, customGraphInput, graph }

// Configuration for the app's router using GoRouter.
final appRouterConfig = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    // Route for the home screen
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        // Nested route for the custom graph input screen
        GoRoute(
          path: 'custom',
          name: AppRoute.customGraphInput.name,
          builder: (context, state) => const CustomGraphInputScreen(),
        ),
      ],
    ),
    // Route for the graph screen with dynamic species parameter
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
  // Builder for the error screen when a route is not found
  errorBuilder: (context, state) => const NotFoundScreen(),
);
