import 'package:flutter/material.dart';

import 'config/app_config.dart';
import 'config/routes.dart';
import 'core/theme/app_theme.dart';

/// Root widget. Wires the router and theme; routing/state are configured
/// upstream via DI and downstream via go_router.
class GShopApp extends StatelessWidget {
  const GShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: appRouter,
    );
  }
}
