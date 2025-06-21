import 'dart:async';

import 'package:flutter/material.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';

class DialogUncommon {
  void showAnimatedDialog(BuildContext context, String messageData) {
    //it will be dismissed through human-intervention
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, animation1, animation2) {
        return Align(
          alignment: Alignment.center,
          child: ScaleTransition(
            scale: CurvedAnimation(
              parent: animation1,
              curve: Curves.easeOutBack,
            ),
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RetainTextScaleWrapper(child: Text(messageData)),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: RetainTextScaleWrapper(
                          child: Text(
                        'Close',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withValues(alpha: 0.9),
                            ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }

  void showAutoDismissDialog(
      BuildContext context, String messageData, IconData? icon, Color? color) {
    // Completer to track the dialog state
    final Completer<void> dialogCompleter = Completer<void>();
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, animation1, animation2) {
        // final Brightness brightness = MediaQuery.of(context).platformBrightness;
        // final bool isDarkMode = brightness == Brightness.dark;

        // Use `Navigator.of(context)` to get the navigator before the delay.
        final navigator = Navigator.of(context);

        // Auto-dismiss the dialog after 1.5 seconds
        Future.delayed(const Duration(milliseconds: 1000), () {
          if (!dialogCompleter.isCompleted && navigator.canPop()) {
            navigator.pop();
          }
        });

        return FadeTransition(
          opacity: animation1,
          child: Align(
            alignment: Alignment.center,
            child: ScaleTransition(
              scale: CurvedAnimation(
                parent: animation1,
                curve: Curves.easeOutBack,
              ),
              child: Dialog(
                backgroundColor: Colors.black87.withAlpha(200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      (color == null && icon == null)
                          ? SizedBox()
                          : Icon(
                              icon,
                              color: color,
                            ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      RetainTextScaleWrapper(
                        child: Text(
                          messageData,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    ).then((_) {
      // Mark the dialog as dismissed when it's popped or dismissed
      if (!dialogCompleter.isCompleted) {
        dialogCompleter.complete();
      }
    });
  }

  void showAutoDismissDialogLonger(
      BuildContext context, String messageData, IconData? icon, Color? color) {
    // Completer to track the dialog state
    final Completer<void> dialogCompleter = Completer<void>();
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, animation1, animation2) {
        // final Brightness brightness = MediaQuery.of(context).platformBrightness;
        // final bool isDarkMode = brightness == Brightness.dark;

        // Use `Navigator.of(context)` to get the navigator before the delay.
        final navigator = Navigator.of(context);

        // Auto-dismiss the dialog after 1.5 seconds
        Future.delayed(const Duration(milliseconds: 1500), () {
          if (!dialogCompleter.isCompleted && navigator.canPop()) {
            navigator.pop();
          }
        });

        return FadeTransition(
          opacity: animation1,
          child: Align(
            alignment: Alignment.center,
            child: ScaleTransition(
              scale: CurvedAnimation(
                parent: animation1,
                curve: Curves.easeOutBack,
              ),
              child: Dialog(
                backgroundColor: Colors.black87.withAlpha(200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      (color == null && icon == null)
                          ? SizedBox()
                          : Icon(
                              icon,
                              color: color,
                            ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      RetainTextScaleWrapper(
                        child: Text(
                          messageData,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    ).then((_) {
      // Mark the dialog as dismissed when it's popped or dismissed
      if (!dialogCompleter.isCompleted) {
        dialogCompleter.complete();
      }
    });
  }
}
