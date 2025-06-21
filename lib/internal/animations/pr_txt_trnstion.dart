import 'dart:async';

import 'package:flutter/material.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';

class ProductTextTransition extends StatefulWidget {
  final List<String> texts;
  final Duration duration;

  ProductTextTransition({
    super.key,
    required this.texts,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  ProductTextTransitionState createState() => ProductTextTransitionState();
}

class ProductTextTransitionState extends State<ProductTextTransition> {
  late final PageController _pageController = PageController();
  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      // 3 seconds
      _startTextTransition();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  // void _startTextTransition() {
  //   Future.delayed(widget.duration, () {
  //     if (mounted) {
  //       setState(() {
  //         _currentIndex = (_currentIndex + 1) % widget.texts.length;
  //       });
  //       _pageController.nextPage(
  //         duration: widget.duration,
  //         curve: Curves.easeInOutCirc,
  //       );
  //       _startTextTransition();
  //     }
  //   });
  // }

  void _startTextTransition() {
    if (mounted) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % widget.texts.length;
      });
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: widget.duration,
          curve: Curves.easeInOutCirc,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;

    return AnimatedSwitcher(
      duration: widget.duration,
      // switchInCurve: Interval(0.0, 0.5, curve: Curves.easeInOut),
      // switchOutCurve: Interval(0.0, 0.5, curve: Curves.easeInOut),
      // switchInCurve: Curves.easeInOut,
      // switchOutCurve: Curves.easeInOut,
      // transitionBuilder: (Widget child, Animation<double> animation) {
      //   const begin = Offset(0.0, 1.0); // Slide from below
      //   const end = Offset.zero;
      //   const curve = Curves.linear; //easeInOutCirc

      //   var tween =
      //       Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      //   var offsetAnimation = animation.drive(tween);

      //   return SlideTransition(
      //     position: offsetAnimation,
      //     child: child,
      //   );
      // }, // subject for evaluation
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          scale: animation.drive(CurveTween(curve: Curves.easeInOutBack)),
          child: child,
        );
      },
      child: RetainTextScaleWrapper(
        key: ValueKey<int>(_currentIndex),
        child: Text(
          widget.texts[_currentIndex],
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
    );
  }
}
