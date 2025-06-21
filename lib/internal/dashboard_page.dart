import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:glamgear/dart_logo/raquel_logo.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:tab_container/tab_container.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _HomeState();
}

class _HomeState extends ConsumerState<DashboardPage>
    with TickerProviderStateMixin {
  late List<Tab> _tabs;
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<String> _listBannerImages = [
    'assets/images/headline_banner2_1_2.png',
    'assets/images/headline_banner2_2_2.png',
    'assets/images/headline_banner2_3_2.png',
  ];

  void _initBottomAppBarIndex() {
    ref.read(dashboardBottomAppBarIndexProvider.notifier).setIndex();
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() => _initBottomAppBarIndex());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // Safe to use Theme.of(context) here

    // Initialize the tabs
    _tabs = _getTab(context);
    super.didChangeDependencies();
  }

  List<Tab> _getTab(BuildContext context) {
    return [
      // const Tab(icon: Icon(Icons.shopping_bag_rounded), text: "Luxury Bag"),
      // const Tab(icon: Icon(Icons.phone_android), text: "Gadget"),
      Tab(
        child: Tooltip(
          message: 'Jewelry',
          child: Icon(
            Icons.diamond_rounded,
            size: 20,
          ),
        ),
      ),
      Tab(
          child: Tooltip(
              message: 'Luxury Bag',
              child: Icon(
                Icons.shopping_bag_rounded,
                size: 20,
              ))),
      Tab(
        child: Tooltip(
          message: 'Gadget',
          child: Icon(
            Icons.phone_android_rounded,
            size: 20,
          ),
        ),
      ),
      Tab(
        child: Tooltip(
          message: 'Others',
          child: Icon(
            Icons.more_horiz_rounded,
            size: 20,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;
    // final bool isExtraLargeScreen = MediaQuery.of(context).size.width > 1048 &&
    //     MediaQuery.of(context).size.width <= 1280;
    // final customTheme = Theme.of(context).extension<CustomTheme>();
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    // final customTheme = Theme.of(context).extension<CustomTheme>();

    final homeScrollingState = ref.watch(homeScrollingStateProvider);

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
      ),
    );
  }
}
