import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';

/// Global service locator instance.
final GetIt getIt = GetIt.instance;

/// Initializes the dependency graph. Call once before `runApp`.
@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async => init(getIt);
