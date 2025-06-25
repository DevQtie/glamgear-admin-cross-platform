import 'package:flutter/material.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/main.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ManageProducts extends StatelessWidget {
  const ManageProducts({super.key});

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1000;
    final customTheme = Theme.of(context).extension<CustomTheme>();

    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.red.withValues(alpha: 0.5),
            width: 1,
          ),
          top: BorderSide(
            color: Colors.red.withValues(alpha: 0.5),
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.red.withValues(alpha: 0.5),
            width: 1,
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: kIsWeb
              ? 0
              : isSmallScreen
                  ? 50
                  : isMediumScreen
                      ? 70
                      : isLargeScreen
                          ? 100
                          : 200,
          titleSpacing: isSmallScreen
              ? kIsWeb
                  ? 16
                  : 16
              : isMediumScreen
                  ? 70
                  : isLargeScreen
                      ? 100
                      : 200,
          forceMaterialTransparency: true,
          // backgroundColor: colorScheme.surfaceContainerHighest,
          title: RetainTextScaleWrapper(
            child: Text(
              'Manage Products',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ), // Optional title for the app bar
        ),
        body: Container(
          decoration: BoxDecoration(color: colorScheme.surfaceContainerHighest),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 1000,
                    child: Padding(
                      padding: isSmallScreen
                          ? const EdgeInsets.only(
                              top: 10.0, right: 10.0, bottom: 15.0, left: 10.0)
                          : isMediumScreen
                              ? const EdgeInsets.only(
                                  top: 10.0,
                                  right: 70.0,
                                  bottom: 15.0,
                                  left: 70.0)
                              : isLargeScreen
                                  ? const EdgeInsets.only(
                                      top: 10.0,
                                      right: 100.0,
                                      bottom: 15.0,
                                      left: 100.0)
                                  : const EdgeInsets.only(
                                      top: 10.0,
                                      right: 200.0,
                                      bottom: 15.0,
                                      left: 200.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: customTheme?.containerBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(4.0), // Border radius
                          border: Border.all(
                              color: Colors.transparent), // Border color
                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: RetainTextScaleWrapper(
                            child: Text('Coming soon...',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
