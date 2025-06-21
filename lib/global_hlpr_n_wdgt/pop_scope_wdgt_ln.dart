/*
DevQt findings: this is useful only if you're
utilizing a list instance of FocusNode
*/

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopScopeWidgetListNodes extends StatelessWidget {
  final List<FocusNode> focusNodes;
  final bool visible;
  final Widget child;

  const PopScopeWidgetListNodes({
    super.key,
    required this.focusNodes,
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
          // Unfocus all provided FocusNodes
          for (var focusNode in focusNodes) {
            if (focusNode.hasFocus) {
              focusNode.unfocus();
            }
          }
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
