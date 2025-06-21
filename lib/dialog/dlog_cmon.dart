import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/riverpod/provider.dart';

class DialogCommon {
  void showDialogMessage(BuildContext context, String title, String contentText,
      String buttonText) async {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor:
            isDarkMode ? Colors.grey.shade900 : Colors.grey.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        title: RetainTextScaleWrapper(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
          ),
        ),
        content: RetainTextScaleWrapper(child: Text(contentText)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: RetainTextScaleWrapper(child: Text(buttonText)),
          ),
        ],
      ),
    );
  }

  void showDialogMessageCustomizableButton(BuildContext context, String title,
      String contentText, Widget customButton) async {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor:
            isDarkMode ? Colors.grey.shade900 : Colors.grey.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        title: RetainTextScaleWrapper(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
          ),
        ),
        content: RetainTextScaleWrapper(child: Text(contentText)),
        actions: [
          customButton,
        ],
      ),
    );
  }

  void showDialogMessageWithTwoActions(
    BuildContext context,
    WidgetRef ref,
    String? title,
    String contentText,
    Widget firstAction,
    Widget secondAction,
  ) async {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor:
            isDarkMode ? Colors.grey.shade900 : Colors.grey.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        title: title != null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: RetainTextScaleWrapper(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.75,
                    ),
                  ),
                ),
              )
            : null,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RetainTextScaleWrapper(child: Text(contentText)),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              firstAction,
              const SizedBox(width: 10),
              secondAction,
            ],
          ),
        ],
      ),
    ).then((_) {
      ref.read(checkButtonStateProvider.notifier).isButtonEnabled();
    });
  }

  void showDialogMessageExpanded(
      BuildContext context,
      ThemeData theme,
      bool isExtraSmallScreen,
      bool isSmallScreen,
      bool isMediumScreen,
      bool isLargeScreen,
      bool isExtraLargeScreen,
      double width,
      double height,
      String title,
      Widget content,
      Widget button) async {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        insetPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 32), // Adjust this value for the desired margin
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.grey.shade900 : Colors.grey.shade100,
                borderRadius:
                    BorderRadius.circular(4), // Optional rounded corners
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: RetainTextScaleWrapper(
                      child: Text(
                        title,
                        style: theme.textTheme.titleLarge!.copyWith(
                            fontSize: isExtraSmallScreen
                                ? 12
                                : isSmallScreen
                                    ? 20
                                    : isMediumScreen
                                        ? 18
                                        : isLargeScreen
                                            ? 22
                                            : isExtraLargeScreen
                                                ? 24
                                                : 24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: content,
                  ),
                  button,
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                icon: Icon(CupertinoIcons.xmark),
                onPressed: () {
                  if (Navigator.of(context).canPop()) {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showDialogFullscreen(
      BuildContext context,
      ThemeData theme,
      bool isExtraSmallScreen,
      bool isSmallScreen,
      bool isMediumScreen,
      bool isLargeScreen,
      bool isExtraLargeScreen,
      String title,
      Widget content,
      Widget button) async {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        insetPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 32), // Adjust this value for the desired margin
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.grey.shade900 : Colors.grey.shade100,
                borderRadius:
                    BorderRadius.circular(4), // Optional rounded corners
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: RetainTextScaleWrapper(
                      child: Text(
                        title,
                        style: theme.textTheme.titleLarge!.copyWith(
                            fontSize: isExtraSmallScreen
                                ? 12
                                : isSmallScreen
                                    ? 20
                                    : isMediumScreen
                                        ? 18
                                        : isLargeScreen
                                            ? 22
                                            : isExtraLargeScreen
                                                ? 24
                                                : 24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: content,
                  ),
                  button,
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                icon: Icon(CupertinoIcons.xmark),
                onPressed: () {
                  if (Navigator.of(context).canPop()) {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showDialogSnackbar(
      BuildContext context, String contentText) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: RetainTextScaleWrapper(
          child: Text(contentText,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
