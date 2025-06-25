import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final Uri currentRoutePath =
        GoRouter.of(context).routeInformationProvider.value.uri; //current setup
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Not Found',
            style: theme.textTheme.headlineSmall?.copyWith()),
      ),
      body: Container(
        color: colorScheme.surfaceContainerHighest,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          spacing: 8.0,
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            Text(
              'Page $currentRoutePath is not found',
              textAlign: TextAlign.center,
            ),
            OutlinedButton(
              onPressed: () {
                context.go('/glamgear');
              },
              child: Text('Go to main page',
                  style: theme.textTheme.bodyMedium?.copyWith()),
            ),
          ],
        ),
      ),
    );
  }
}
