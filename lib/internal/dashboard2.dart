import 'dart:math';
import 'dart:ui';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/dart_logo/raquel_logo.dart';
import 'package:glamgear/global_hlpr_n_wdgt/page_state_mngr.dart';
import 'package:glamgear/internal/data_model/freezed/prdct_client_data.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:developer' as developer;
import 'package:badges/badges.dart' as badges;
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Dashboard2 extends ConsumerStatefulWidget {
  // for reference only, and not used in the app
  final StatefulNavigationShell navigationShell;
  const Dashboard2({required this.navigationShell, super.key, String? data});

  @override
  ConsumerState<Dashboard2> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard2> {
  ColoredBox? _mainArea;
  int _selectedIndex = 0;
  // final Map<String, bool> _expandedState = {};

  // String? _setProfileName;

  double _navItemHeight = 0;
  // Create a GlobalKey to measure the height of the navigation items
  final _navItemKey = GlobalKey();
  final _dialogUncommon = DialogUncommon();
  DateTime? _currentBackPressTime;

  // PageController _pageController = PageController();
  final _sideMenu = SideMenuController();
  List<SideMenuItemType>? _largeScreenMenu;

  Future<bool?> _onPop() {
    DateTime now = DateTime.now();
    if (_currentBackPressTime == null ||
        now.difference(_currentBackPressTime!) > Duration(milliseconds: 2500)) {
      _currentBackPressTime = now;
      _dialogUncommon.showAutoDismissDialog(
          context, 'Press back again to exit GlamGear.', null, null);
      return Future.value(false);
    }
    return Future.value(true);
  } // works better

  // void _toggleSubMenu(String title, Offset position) {
  //   setState(() {
  //     _expandedState[title] = !_expandedState[title]!;
  //   });
  // }

  void _initLargeScreenMenu() {
    _largeScreenMenu = <SideMenuItemType>[
      SideMenuItem(
        title: 'Home',
        onTap: (index, _) {
          _sideMenu.changePage(index);
        },
        icon: Icon(CupertinoIcons.house_fill),
        badgeContent: Text(
          '3',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuExpansionItem(
        title: "Products",
        icon: const Icon(CupertinoIcons.bag_fill),
        children: [
          SideMenuItem(
            title: 'Add Products',
            onTap: (index, _) {
              _sideMenu.changePage(index);
            },
            icon: const Icon(CupertinoIcons.bag_fill_badge_plus),
          ),
          SideMenuItem(
            title: 'Manage Products',
            onTap: (index, _) {
              _sideMenu.changePage(index);
            },
            icon: const Icon(CupertinoIcons.bag_fill_badge_minus),
          ),
        ],
      ),
      SideMenuExpansionItem(
        title: "Orders",
        icon: const Icon(CupertinoIcons.doc_chart_fill),
        children: [
          SideMenuItem(
            title: 'Order List',
            onTap: (index, _) {
              _sideMenu.changePage(index);
            },
            icon: const Icon(CupertinoIcons.doc_text_fill),
          ),
          SideMenuItem(
            title: 'Return & Cancellations Orders',
            onTap: (index, _) {
              _sideMenu.changePage(index);
            },
            icon: const Icon(CupertinoIcons.arrow_up_doc_fill),
          ),
          SideMenuItem(
            title: 'Reviews',
            onTap: (index, _) {
              _sideMenu.changePage(index);
            },
            icon: const Icon(CupertinoIcons.doc_checkmark_fill),
          )
        ],
      ),
      SideMenuExpansionItem(
        title: "Users",
        icon: const Icon(CupertinoIcons.person_2_square_stack_fill),
        children: [
          SideMenuItem(
            title: 'New Users',
            onTap: (index, _) {
              _sideMenu.changePage(index);
            },
            icon:
                const Icon(CupertinoIcons.person_crop_circle_fill_badge_exclam),
          ),
          SideMenuItem(
            title: 'Regular Users',
            onTap: (index, _) {
              _sideMenu.changePage(index);
            },
            icon: const Icon(
                CupertinoIcons.person_crop_circle_fill_badge_checkmark),
          ),
          SideMenuItem(
            title: 'Disabled Users',
            onTap: (index, _) {
              _sideMenu.changePage(index);
            },
            icon:
                const Icon(CupertinoIcons.person_crop_circle_fill_badge_minus),
          )
        ],
      ),
      SideMenuItem(
        title: 'Messages',
        onTap: (index, _) {
          _sideMenu.changePage(index);
        },
        icon: Icon(CupertinoIcons.chat_bubble_text_fill),
        badgeContent: Text(
          '10',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        title: 'Account',
        onTap: (index, _) {
          _sideMenu.changePage(index);
        },
        icon: Icon(CupertinoIcons.person_alt_circle_fill),
      ),
    ];
  }

  void _initSideMenu(int index) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.navigationShell.goBranch(
        index,
        initialLocation: index == widget.navigationShell.currentIndex,
      );
    });
  }

  void _reloadSideMenu() {
    // sideMenu =
    //     SideMenuController(initialPage: widget.navigationShell.currentIndex); // both are working well
    _sideMenu.changePage(
        widget.navigationShell.currentIndex); // both are working well
  }

  Widget buildNavItem(
      IconData iconOutLined, IconData iconFilled, String label, int index,
      {String badgeCount = '0'}) {
    final int isShowBadge = int.parse(badgeCount.replaceAll('+', ''));
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;

    final bottomAppBarIndex = ref.watch(dashboardBottomAppBarIndexProvider);

    return InkWell(
      onTap: () async {
        // setState(() {
        //   _selectedIndex = index;
        // });
        ref
            .read(dashboardBottomAppBarIndexProvider.notifier)
            .setIndex(index: index);
        developer.log('What index: $index');
        if (index == 1) {
          // cart is selected
          final futurePrefs = await ref.read(sharedPrefFutureProvider.future);
          final sharedPrefUserID = await futurePrefs.getUsername();

          await ref
              .read(cartPreviewManageDataProvider.notifier)
              .preventInvalidIsSelectedState(
                  '/api/postget/process_client_side_data',
                  'GLOBAL_IS_SELECTED_TO_FALSE');

          ref.read(cartPreviewProvider.notifier).initCartPreview(
              '/api/postget/process_client_side_data',
              sharedPrefUserID ?? 'NULL',
              'CART_PREVIEW');

          ref.read(cartBottomPreviewProvider.notifier).initBottomPropData(
              '/api/postget/process_client_side_data',
              sharedPrefUserID ?? 'NULL',
              'CART_BOTTOM_PREVIEW');

          ref
              .read(prodVarIDPVBottomSheetProvider.notifier)
              .setID(); // necessary to reset
        }
        WidgetsBinding.instance.addPostFrameCallback((_) {
          widget.navigationShell.goBranch(
            index,
            initialLocation:
                bottomAppBarIndex == widget.navigationShell.currentIndex,
          );
        });
      },
      child: Column(
        key: index == 0
            ? _navItemKey
            : null, // Assign the key only to the first item for measuring
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Row(
            children: [
              kIsWeb
                  ? Flexible(
                      child: Opacity(
                        opacity: 0.1,
                        child: Divider(
                          height: 1,
                          thickness: 0.5,
                        ),
                      ),
                    )
                  : Expanded(
                      child: Opacity(
                        opacity: 0.1,
                        child: Divider(
                          height: 1,
                          thickness: 0.5,
                        ),
                      ),
                    ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -5, end: -4),
              showBadge:
                  isShowBadge > 0, // Show badge only if count is greater than 0
              badgeContent: RetainTextScaleWrapper(
                child: Text(
                  badgeCount,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 8.25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              badgeStyle: badges.BadgeStyle(
                shape: isShowBadge > 9
                    ? badges.BadgeShape.square
                    : badges.BadgeShape.circle,
                badgeColor: const Color.fromARGB(255, 243, 33, 92),
                padding:
                    const EdgeInsets.symmetric(horizontal: 3.75, vertical: 1),
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.white, width: 0.75),
                elevation: 0,
              ), // Customize the badge color
              child: Icon(
                bottomAppBarIndex == index ? iconFilled : iconOutLined,
                color: bottomAppBarIndex == index
                    ? isDarkMode
                        ? const Color.fromARGB(190, 255, 193, 7)
                        : Colors.lightBlue
                    : isDarkMode
                        ? Colors.grey.shade100
                        : Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: RetainTextScaleWrapper(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: bottomAppBarIndex == index
                      ? isDarkMode
                          ? const Color.fromARGB(190, 255, 193, 7)
                          : Colors.lightBlue
                      : isDarkMode
                          ? Colors.grey.shade100
                          : Colors.black54,
                  letterSpacing: 0.75,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _initBadgeCounts() async {
    final futurePrefs = await ref.read(sharedPrefFutureProvider.future);

    final sharedPrefUserID = await futurePrefs.getUsername();
    ref.read(retrieveBadgeDataProvider.notifier).initProdClientDPreview(
        '/api/postget/process_client_side_data',
        sharedPrefUserID ?? 'NULL',
        'RETRIEVE_BADGE_COUNTS');
    ref.read(dNameMyOrdersBadgeCountsProvider.notifier).initAccountInfoNBC(
        // NOTE: ref.invalidate then ref.read this again [after] every time there's a user modification to their purchased orders
        '/api/postget/process_client_side_data',
        sharedPrefUserID ?? 'NULL',
        'ACCOUNT_NAME_N_MY_ORDER_BADGES_CNT');
  }

  @override
  void initState() {
    super.initState();

    // Measure the height after the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_navItemKey.currentContext == null) {
        return; //I've added this to prevent conflicts
      }
      final RenderBox renderBox =
          _navItemKey.currentContext!.findRenderObject()! as RenderBox;
      final double height = renderBox.size.height;

      setState(() {
        _navItemHeight = height;
      });
    });

    PageStateManager.browserEvent('load', _reloadSideMenu());

    _sideMenu.addListener((index) {
      _initSideMenu(index);
    });

    if (mounted) {
      setState(() {
        _initLargeScreenMenu();
      });
    }
    Future.microtask(() => _initBadgeCounts());
  }

  @override
  void dispose() {
    _sideMenu.removeListener((index) {
      _initSideMenu(index);
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final String? currentRoute =
        ModalRoute.of(context)?.settings.name; //previous setup
    final Uri currentRoutePath =
        GoRouter.of(context).routeInformationProvider.value.uri; //current setup
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    developer.log('CurrentRoute: $currentRoute');
    developer.log('CurrentRoute2: $currentRoutePath');
    // Track selected index using keys

    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;
    // final bool isExtraLargeScreen = MediaQuery.of(context).size.width > 1048 &&
    //     MediaQuery.of(context).size.width <= 1280;

    // final data =
    //     GoRouterState.of(context).uri.queryParameters['data'] ?? 'Exception';

    // const BottomNavigationBarType bottomNavType = BottomNavigationBarType.fixed;

    // setState(() { // subject for evaluation
    //   _setProfileName = data;
    // });

    final bottomAppBarIndex = ref.watch(dashboardBottomAppBarIndexProvider);

    final AsyncValue<BadgeData> badgeCountData =
        ref.watch(retrieveBadgeDataProvider);

    _mainArea = ColoredBox(
      color: colorScheme.surfaceContainerHighest,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: widget.navigationShell,
      ),
    );

    return PopScope<Object?>(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) {
          return;
        }
        if (!kIsWeb) {
          if (bottomAppBarIndex != 0) {
            // setState(() {
            //   _selectedIndex = 0;
            // });
            ref.read(dashboardBottomAppBarIndexProvider.notifier).setIndex();
            WidgetsBinding.instance.addPostFrameCallback((_) {
              widget.navigationShell.goBranch(
                0,
                initialLocation:
                    bottomAppBarIndex == widget.navigationShell.currentIndex,
              );
            });
          } else {
            final bool shouldPop = await _onPop() ?? false;
            if (context.mounted && shouldPop) {
              SystemNavigator
                  .pop(); // to allow the user to return on the device app stack
            }
          }
        }
      },
      child: Scaffold(
        bottomNavigationBar: (isExtraSmallScreen ||
                isSmallScreen ||
                isMediumScreen)
            ? BottomAppBar(
                height: _navItemHeight > 0 ? (_navItemHeight + 1) : null,
                padding: const EdgeInsets.all(0),
                child: LayoutBuilder(builder: (context, constraint) {
                  double parentWidth = constraint.maxWidth / 4;
                  return Wrap(
                    children: [
                      Divider(
                        height: 0.5,
                        thickness: 1,
                        color: isDarkMode
                            ? Colors.grey.shade400.withValues(alpha: 0.5)
                            : Colors.grey.shade400,
                      ),
                      Wrap(
                        //choose between Wrap and Row based on your observation with Widget rendering: my default is Wrap
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: parentWidth,
                            child: buildNavItem(
                              EvaIcons.homeOutline,
                              EvaIcons.home,
                              'Home',
                              0,
                            ), // It's fine to not specify badgeCount because it defaults to a specific value.
                          ),
                          SizedBox(
                            width: parentWidth,
                            child: badgeCountData.when(
                              loading: () => buildNavItem(
                                EvaIcons.shoppingCartOutline,
                                EvaIcons.shoppingCart,
                                'Cart',
                                1,
                              ),
                              error: (error, stack) => buildNavItem(
                                EvaIcons.shoppingCartOutline,
                                EvaIcons.shoppingCart,
                                'Cart',
                                1,
                              ), // It's fine to not specify badgeCount because it defaults to a specific value.
                              data: (getBadgeCount) {
                                final cartBadgeCnt = getBadgeCount
                                        .badgeData?.first.cartBdgeCnt ??
                                    '0';
                                final int isShowBadge =
                                    int.parse(cartBadgeCnt.replaceAll('+', ''));
                                developer.log('Count: $isShowBadge');
                                return buildNavItem(
                                    EvaIcons.shoppingCartOutline,
                                    EvaIcons.shoppingCart,
                                    'Cart',
                                    1,
                                    badgeCount: cartBadgeCnt);
                              },
                            ),
                          ),
                          SizedBox(
                            width: parentWidth,
                            child: badgeCountData.when(
                              loading: () => buildNavItem(
                                EvaIcons.messageSquareOutline,
                                EvaIcons.messageSquare,
                                'Messages',
                                2,
                              ),
                              error: (error, stack) => buildNavItem(
                                EvaIcons.messageSquareOutline,
                                EvaIcons.messageSquare,
                                'Messages',
                                2,
                              ), // It's fine to not specify badgeCount because it defaults to a specific value.
                              data: (getBadgeCount) {
                                final mssgBadgeCnt = getBadgeCount
                                        .badgeData?.first.mssgBdgeCnt ??
                                    '0';
                                final int isShowBadge =
                                    int.parse(mssgBadgeCnt.replaceAll('+', ''));
                                developer.log('Count: $isShowBadge');
                                return buildNavItem(
                                  EvaIcons.messageSquareOutline,
                                  EvaIcons.messageSquare,
                                  'Messages',
                                  2,
                                  badgeCount: mssgBadgeCnt,
                                ); // It's fine to not specify badgeCount because it defaults to a specific value.
                              },
                            ),
                          ),
                          SizedBox(
                            width: parentWidth,
                            child: buildNavItem(
                              EvaIcons.personOutline,
                              EvaIcons.person,
                              'Account',
                              3,
                            ), // It's fine to not specify badgeCount because it defaults to a specific value.
                          ),
                        ],
                      ),
                    ],
                  );
                }),
              )
            : null,
        body: (isExtraSmallScreen || isSmallScreen || isMediumScreen)
            ?
            // Use a more mobile-friendly layout with BottomNavigationBar
            // on narrow screens.
            // return Expanded(child: mainArea);
            kIsWeb
                ? _mainArea
                : _mainArea
            : Row(
                children: [
                  SideMenu(
                    controller: _sideMenu,
                    // onDisplayModeChanged: (mode) {
                    //   developer.log('Mode: ${mode.name}');
                    // },
                    style: SideMenuStyle(
                      showTooltip: true,
                      displayMode: SideMenuDisplayMode
                          .compact, // to change the sidebar behavior
                      showHamburger: true,
                      hoverColor: isDarkMode
                          ? const Color.fromARGB(190, 255, 193, 7)
                              .withValues(alpha: 0.3)
                          : Colors.lightBlue.withValues(alpha: 0.3),
                      selectedHoverColor: isDarkMode
                          ? const Color.fromARGB(190, 255, 193, 7)
                              .withValues(alpha: 0.5)
                          : Colors.lightBlue.withValues(alpha: 0.75),
                      unselectedIconColorExpandable: isDarkMode
                          ? Colors.grey.shade100.withValues(alpha: 0.75)
                          : Colors.black54.withValues(alpha: 0.5),
                      selectedIconColorExpandable:
                          isDarkMode ? Colors.grey.shade100 : Colors.black54,
                      unselectedTitleTextStyleExpandable: TextStyle(
                        color: isDarkMode
                            ? Color.fromARGB(235, 255, 255, 255)
                                .withValues(alpha: 0.5)
                            : Colors.black87
                                .withAlpha(200)
                                .withValues(alpha: 0.5),
                      ),
                      selectedTitleTextStyleExpandable: TextStyle(
                        color: isDarkMode
                            ? Color.fromARGB(235, 255, 255, 255)
                            : Colors.black87.withAlpha(200),
                      ),
                      selectedColor: isDarkMode
                          ? const Color.fromARGB(190, 255, 193, 7)
                          : Colors.lightBlue,
                      unselectedIconColor: isDarkMode
                          ? Colors.grey.shade100.withValues(alpha: 0.5)
                          : Colors.black54.withValues(alpha: 0.5),
                      selectedIconColor: Colors.grey.shade100,
                      // isDarkMode
                      //     ? Colors.grey.shade100
                      //     : Colors.black54,
                      unselectedTitleTextStyle: TextStyle(
                        color: isDarkMode
                            ? Color.fromARGB(235, 255, 255, 255)
                                .withValues(alpha: 0.5)
                            : Colors.black87
                                .withAlpha(200)
                                .withValues(alpha: 0.5),
                      ),
                      selectedTitleTextStyle: TextStyle(
                        color: Color.fromARGB(235, 255, 255, 255),
                        // isDarkMode
                        //     ? Color.fromARGB(235, 255, 255, 255)
                        //     : Colors.black87.withAlpha(200),
                      ),
                      arrowCollapse: isDarkMode
                          ? Colors.grey.shade100.withValues(alpha: 0.5)
                          : Colors.black54.withValues(alpha: 0.5),
                      arrowOpen:
                          isDarkMode ? Colors.grey.shade100 : Colors.black54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      // backgroundColor: Colors.grey[200]
                    ),
                    title: Column(
                      children: [
                        GetLogo(
                          path: 'assets/icons/glamgear_app_icon.png',
                          size: isSmallScreen ? 50 : 100,
                          kIsWeb: kIsWeb,
                          isSvgSpecific: false,
                        ),
                        Row(
                          children: const [
                            Flexible(
                              child: Opacity(
                                opacity: 0.1,
                                child: Divider(
                                  indent: 0.0,
                                  endIndent: 0.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    footer: null,
                    items: _largeScreenMenu!,
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: const VerticalDivider(
                      width: 0,
                    ),
                  ),
                  kIsWeb ? Flexible(child: _mainArea!) : _mainArea!,
                ],
              ),
      ),
    );
  }
}
