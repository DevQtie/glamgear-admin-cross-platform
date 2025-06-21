/*
DevQt findings: this is useful only if you're
utilizing a list instance of FocusNode with custom showDialog
*/

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/dialog/dlog_cmon.dart';

class PopScopeWidgetListNodeswithDialog extends ConsumerWidget {
  final List<FocusNode?> focusNodes;
  final bool visible;
  final Widget child;
  final BuildContext context;
  final String? title;
  final String contentText;
  final Widget firstAction;
  final Widget secondAction;

  PopScopeWidgetListNodeswithDialog({
    super.key,
    required this.focusNodes,
    required this.visible,
    required this.child,
    required this.context,
    required this.title,
    required this.contentText,
    required this.firstAction,
    required this.secondAction,
  });

  final _dialogCommon = DialogCommon();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) {
          return;
        }
        if (visible) {
          // Unfocus all provided FocusNodes
          for (var focusNode in focusNodes) {
            if (focusNode!.hasFocus) {
              focusNode.unfocus();
            }
          }
        } else {
          _dialogCommon.showDialogMessageWithTwoActions(
            context,
            ref,
            title,
            contentText,
            firstAction,
            secondAction,
          );
        }
      },
      child: child,
    );
  }
}
