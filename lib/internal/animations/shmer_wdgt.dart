import 'package:flutter/material.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ShimmerWidget {
  Widget shimmerProduct(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return Shimmer.fromColors(
      baseColor: isDarkMode
          ? Colors.grey.shade800.withValues(alpha: 0.45)
          : Colors.grey.shade100,
      highlightColor: isDarkMode
          ? Colors.grey.shade700
          : colorScheme.surfaceContainerHighest,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   height: 200,
          //   width: double.infinity,
          //   color: Colors.white,
          // ),
          SizedBox(
            height: 400,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
              child: Icon(
                Icons.image,
                color: Colors.grey.shade300,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 20,
              width: double.infinity,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 20,
              width: 150,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 20,
              width: double.infinity,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 20,
              width: 150,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 20,
              width: double.infinity,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget shimerSingleContainer(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final ThemeData theme = Theme.of(context);
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    // final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;
    // final bool isExtraLargeScreen = MediaQuery.of(context).size.width > 1048 &&
    //     MediaQuery.of(context).size.width <= 1280;
    return Shimmer.fromColors(
      baseColor: isDarkMode
          ? Colors.grey.shade800.withValues(alpha: 0.45)
          : Colors.grey.shade100,
      highlightColor: isDarkMode
          ? Colors.grey.shade700
          : colorScheme.surfaceContainerHighest,
      child: Container(
        decoration: BoxDecoration(
          color: isDarkMode
              ? Colors.black.withValues(alpha: 0.65)
              : Colors.grey.shade200.withValues(alpha: 0.65),
          borderRadius: BorderRadius.circular(4.0), // Border radius
          border: Border.all(color: Colors.transparent),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18 / 19,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Icon(
                  size: mediaQueryHeight,
                  Icons.image,
                  color:
                      isDarkMode ? Colors.grey.shade700 : Colors.grey.shade300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              child: Column(
                // TODO: Align labels to the bottom and center (103)
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                // TODO: Change innermost Column (103)
                children: <Widget>[
                  // TODO: Handle overflowing labels (103)
                  Container(
                    color: Colors.black,
                    child: RetainTextScaleWrapper(
                      child: Text(
                        "SHIMMER",
                        style: theme.textTheme.titleLarge!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.normal),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.black,
                        child: RetainTextScaleWrapper(
                          child: Text(
                            "SHIMMER",
                            style: theme.textTheme.titleLarge!.copyWith(
                                fontSize: isExtraSmallScreen
                                    ? 14
                                    : isSmallScreen
                                        ? 18
                                        : isMediumScreen
                                            ? 18
                                            : isLargeScreen
                                                ? 16
                                                : 22,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 243, 33, 92)),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  Container(
                    color: Colors.black,
                    child: RetainTextScaleWrapper(
                      child: Text(
                        'SHIMMER',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontSize: isExtraSmallScreen
                                    ? 10
                                    : isSmallScreen
                                        ? 12
                                        : isMediumScreen
                                            ? 12
                                            : isLargeScreen
                                                ? 14
                                                : 14,
                                fontWeight: FontWeight.bold,
                                color: isDarkMode
                                    ? const Color.fromARGB(190, 255, 193, 7)
                                    : Colors.lightBlue),
                        // maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget shimmerGridCard(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 1,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              width: mediaQueryWidth,
              height: mediaQueryHeight,
              // color: Colors.grey.shade200.withValues(alpha: 0.65),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200.withValues(alpha: 0.65),
                  borderRadius: BorderRadius.circular(4.0), // Border radius
                  border: Border.all(color: Colors.transparent)),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: mediaQueryHeight * 0.15,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Icon(
                        size: mediaQueryWidth,
                        Icons.image,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  Container(
                    width: mediaQueryWidth,
                    height: kIsWeb
                        ? mediaQueryHeight * 0.05
                        : mediaQueryHeight * 0.025,
                    color: Colors.grey.shade300,
                    margin: EdgeInsets.only(
                        left: mediaQueryWidth * 0.020,
                        right: mediaQueryWidth * 0.020),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    width: mediaQueryWidth,
                    height: kIsWeb
                        ? mediaQueryHeight * 0.05
                        : mediaQueryHeight * 0.025,
                    color: Colors.grey.shade300,
                    margin: EdgeInsets.only(
                        left: mediaQueryWidth * 0.020,
                        right: mediaQueryWidth * 0.02),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
