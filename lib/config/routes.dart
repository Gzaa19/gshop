import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../core/di/dependency_injection.dart';
import '../features/catalog/presentation/bloc/catalog_bloc.dart';
import '../features/catalog/presentation/pages/product_catalog_page.dart';

/// App route names. Centralized so callers don't repeat string literals.
class AppRoutes {
  AppRoutes._();

  static const String catalog = '/';
  static const String catalogName = 'catalog';
}

/// Declarative router built with go_router.
final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.catalog,
  routes: [
    GoRoute(
      path: AppRoutes.catalog,
      name: AppRoutes.catalogName,
      builder: (context, state) => BlocProvider<CatalogBloc>(
        create: (_) => getIt<CatalogBloc>()..add(const CatalogEvent.started()),
        child: const ProductCatalogPage(),
      ),
    ),
  ],
);
