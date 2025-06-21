/*
DevQt findings: this is useful only if you're
utilizing a single instance of FocusNode
*/

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopScopeWidgetSN extends StatelessWidget {
  final FocusNode? focusNode;
  final bool visible;
  final Widget child;

  const PopScopeWidgetSN({
    super.key,
    required this.focusNode,
    required this.visible,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) {
          return;
        }
        if (visible) {
          focusNode!.unfocus();
        } else {
          if (GoRouter.of(context).canPop()) {
            GoRouter.of(context).pop();
          }
        }
      },
      child: child,
    );
  }
}
