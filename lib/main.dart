import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'core/bloc/app_bloc_observer.dart';
import 'core/di/dependency_injection.dart';

/// Application entry point.
///
/// Order matters:
/// 1. Bind Flutter widgets binding (required before any async setup).
/// 2. Configure dependency injection (registers data sources, repos,
///    use cases and BLoCs in `getIt`).
/// 3. Install the BLoC observer for global logging.
/// 4. Run the app.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(const GShopApp());
}
