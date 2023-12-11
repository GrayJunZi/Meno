import 'package:flutter/material.dart';
import 'package:repo_viewer/core/presentation/routes/app_router.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Repo Viewer',
      routerConfig: _appRouter.config(),
    );
  }
}
