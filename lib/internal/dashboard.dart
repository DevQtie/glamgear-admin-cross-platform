import 'dart:io';
import 'dart:math';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/dart_logo/raquel_logo.dart';
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/global_hlpr_n_wdgt/firebase_auth_helper.dart';
import 'package:glamgear/global_hlpr_n_wdgt/ovrly_lder_w_app_ic.dart';
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

class Dashboard extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;
  const Dashboard({required this.navigationShell, super.key, String? data});

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard>
    with SingleTickerProviderStateMixin {
  ColoredBox? _mainArea;
  int _selectedIndex = 0;
  // final Map<String, bool> _expandedState = {};

  // String? _setProfileName;

  double _navItemHeight = 0;
  // Create a GlobalKey to measure the height of the navigation items
  final _navItemKey = GlobalKey();
  final _dialogCommon = DialogCommon();
  final _dialogUncommon = DialogUncommon();
  DateTime? _currentBackPressTime;
  bool _isCollapsed = false;
  double _sidebarWidth = 250.0;
  final Duration _duration = Duration(milliseconds: 300);
  bool _isSubmenuOpen = false;
  // Track expansion state for each menu
  final Map<String, bool> _submenuExpanded = {};
  final List<String> currentUserRoles = ['admin']; // multi-role

  // PageController _pageController = PageController();

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

  void _initSideMenu(int index) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.navigationShell.goBranch(
        index,
        initialLocation: index == widget.navigationShell.currentIndex,
      );
    });
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
        developer.log(name: 'Sidemenu name', label);
        ref
            .read(dashboardBottomAppBarIndexProvider.notifier)
            .setIndex(index: index);
        developer.log('What index: $index');
        if (index == 1) {
          // cart is selected
          final futurePrefs = await ref.read(sharedPrefFutureProvider.future);
          final sharedPrefUserID = await futurePrefs.getAdminID();
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

  Widget _buildMenuItem(
      {required int index,
      required ThemeData theme,
      required IconData icon,
      required String label}) {
    return InkWell(
      onTap: () {
        developer.log(name: 'Sidemenu name', label);
        _initSideMenu(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (!_isCollapsed)
                ? Icon(icon)
                : Tooltip(
                    message: label,
                    waitDuration: Duration(milliseconds: 500),
                    preferBelow: false,
                    child: Icon(icon)),
            if (!_isCollapsed) ...[
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.titleSmall
                      ?.copyWith(fontWeight: FontWeight.normal),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildExpandableMenuItem({
    required ThemeData theme,
    required String key,
    required IconData icon,
    required String label,
    required List<Widget> children,
  }) {
    final isOpen = _isMenuOpen(key);
    return (_isCollapsed)
        ? InkWell(
            onTap: () {
              setState(() {
                _isCollapsed = !_isCollapsed;
              });
              _toggleSubmenu(key);
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12),
              child: Tooltip(
                  message: label,
                  waitDuration: Duration(milliseconds: 500),
                  preferBelow: false,
                  child: Icon(icon)),
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => _toggleSubmenu(key),
                child: Padding(
                  padding: (_isCollapsed)
                      ? EdgeInsets.symmetric(vertical: 8.0)
                      : const EdgeInsets.fromLTRB(22.0, 12.0, 8.0, 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon),
                      if (!_isCollapsed) ...[
                        SizedBox(width: 16),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              label,
                              style: theme.textTheme.titleSmall
                                  ?.copyWith(fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                        Icon(
                          isOpen ? Icons.expand_less : Icons.expand_more,
                          size: 18,
                        ),
                      ]
                    ],
                  ),
                ),
              ),
              if (!_isCollapsed && isOpen)
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children),
              if (_isCollapsed)
                Column(
                  children: children.map((widget) {
                    if (widget is _CollapsedSubMenuIconItem) {
                      return widget;
                    }
                    return SizedBox.shrink();
                  }).toList(),
                ),
            ],
          );
  }

  Widget _buildSubMenuItem(
      {required int index,
      required ThemeData theme,
      required IconData icon,
      required String label}) {
    return InkWell(
      onTap: () {
        developer.log(name: 'Sidemenu name', label);
        _initSideMenu(index);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: _isCollapsed
            ? Tooltip(
                message: label,
                preferBelow: false,
                waitDuration: Duration(milliseconds: 500),
                child: _CollapsedSubMenuIconItem(icon: icon, label: label))
            : Padding(
                padding: const EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 8.0),
                child: Row(
                  children: [
                    Icon(icon),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(label,
                          style: theme.textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  void _toggleSubmenu(String key) {
    setState(() {
      _submenuExpanded.updateAll((_, __) => false); // Collapse all others
      _submenuExpanded[key] = !(_submenuExpanded[key] ?? false);
    });
  }

  bool _isMenuOpen(String key) => _submenuExpanded[key] ?? false;

  final List<MenuItemModel> menuItems = [
    MenuItemModel(
      index: 0,
      id: 'dashboard',
      label: 'Dashboard',
      icon: CupertinoIcons.house_fill,
      requiredRoles: ['admin', 'developer', 'verifier'],
    ),
    MenuItemModel(
      index: -1,
      id: 'products',
      label: 'Products',
      icon: CupertinoIcons.bag_fill,
      requiredRoles: ['admin', 'developer'],
      children: [
        MenuItemModel(
          index: 1,
          id: 'add_products',
          label: 'Add Products',
          icon: CupertinoIcons.bag_fill_badge_plus,
          requiredRoles: ['admin', 'developer'],
        ),
        MenuItemModel(
          index: 2,
          id: 'manage_products',
          label: 'Manage Products',
          icon: CupertinoIcons.bag_fill_badge_minus,
          requiredRoles: ['admin', 'developer'],
        ),
      ],
    ),
    MenuItemModel(
        index: -1,
        id: 'orders',
        label: 'Orders',
        icon: CupertinoIcons.doc_chart_fill,
        requiredRoles: [
          'admin',
          'developer',
          'verifier'
        ],
        children: [
          MenuItemModel(
            index: 3,
            id: 'order_list',
            label: 'Order List',
            icon: CupertinoIcons.doc_text_fill,
            requiredRoles: ['admin', 'developer', 'verifier'],
          ),
          MenuItemModel(
            index: 4,
            id: 'return_cancellations_orders',
            label: 'Return & Cancellations Orders',
            icon: CupertinoIcons.arrow_up_doc_fill,
            requiredRoles: ['admin', 'developer', 'verifier'],
          ),
          MenuItemModel(
            index: 5,
            id: 'reviews',
            label: 'Reviews',
            icon: CupertinoIcons.doc_checkmark_fill,
            requiredRoles: ['admin', 'developer'],
          ),
        ]),
    MenuItemModel(
        index: -1,
        id: 'users',
        label: 'Users',
        icon: CupertinoIcons.person_2_square_stack_fill,
        requiredRoles: [
          'admin',
          'developer',
          'verifier'
        ],
        children: [
          MenuItemModel(
            index: 6,
            id: 'new_users',
            label: 'New Users',
            icon: CupertinoIcons.person_crop_circle_fill_badge_exclam,
            requiredRoles: ['admin', 'developer', 'verifier'],
          ),
          MenuItemModel(
            index: 7,
            id: 'regular_users',
            label: 'Regular Users',
            icon: CupertinoIcons.person_crop_circle_fill_badge_checkmark,
            requiredRoles: ['admin', 'developer', 'verifier'],
          ),
          MenuItemModel(
            index: 8,
            id: 'disabled_users',
            label: 'Disabled Users',
            icon: CupertinoIcons.person_crop_circle_fill_badge_minus,
            requiredRoles: ['admin', 'developer', 'verifier'],
          ),
        ]),
    MenuItemModel(
      index: 9,
      id: 'messages',
      label: 'Messages',
      icon: CupertinoIcons.chat_bubble_text_fill,
      requiredRoles: ['admin', 'developer', 'verifier'],
    ),
    MenuItemModel(
      index: 10,
      id: 'account',
      label: 'Account',
      icon: CupertinoIcons.person_alt_circle_fill,
      requiredRoles: ['admin', 'developer', 'verifier'],
    ),
  ];

  List<Widget> buildSidebarItems(
      String? adminRole, ThemeData theme, bool isCollapsed) {
    return menuItems.where((item) {
      return item.requiredRoles.any(
          //CookieManager.getCookie('admin_role')  // discontinued in the meantime
          adminRole
              .toString()
              .toLowerCase()
              .contains); //item.requiredRoles.any(currentUserRoles.contains);
    }).map((item) {
      final hasChildren = item.children?.isNotEmpty == true;
      if (hasChildren) {
        final filteredChildren = item.children!
            .where((child) => child.requiredRoles.any(
                // CookieManager.getCookie(
                //       'admin_role')
                adminRole
                    .toString()
                    .toLowerCase()
                    .contains)) // discontinued in the meantime // child.requiredRoles.any(currentUserRoles.contains))
            .toList();

        if (filteredChildren.isEmpty) return SizedBox.shrink();

        return _buildExpandableMenuItem(
          theme: theme,
          key: item.id,
          icon: item.icon,
          label: item.label,
          children: filteredChildren.map((child) {
            return _buildSubMenuItem(
                index: child.index,
                theme: theme,
                icon: child.icon,
                label: child.label);
          }).toList(),
        );
      } else {
        return _buildMenuItem(
            index: item.index,
            theme: theme,
            icon: item.icon,
            label: item.label);
      }
    }).toList();
  }

  // void _handlePageAccessSecurity(BuildContext context) { // discontinued in the meantime
  //   if (!CookieManager.isCookiePresent('admin_id') &&
  //       !CookieManager.isCookiePresent('full_name') &&
  //       !CookieManager.isCookiePresent('admin_role')) {
  //     return context.go('/glamgear');
  //   }
  // }

  Future<void> _retrieveAdminData() async {
    final futurePrefs = await ref.read(sharedPrefFutureProvider.future);
    final sharedPrefAdminID = await futurePrefs.getAdminID();
    final sharedPrefFullname = await futurePrefs.getFullname();
    final sharedPrefAdminRole = await futurePrefs.getAdminRole();

    if (sharedPrefAdminID == null && mounted) {
      context.go('/glamgear');
    }

    ref.read(adminIDProvider.notifier).setAdminID(data: sharedPrefAdminID);
    ref.read(fullnameProvider.notifier).setFullname(data: sharedPrefFullname);
    ref
        .read(adminRoleProvider.notifier)
        .setAdminRole(data: sharedPrefAdminRole);
  }

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   // to  ensure the context is available
    //   _handlePageAccessSecurity(context);
    // });

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
    FirebaseAuthHelper.isCurrentlyLoggedInUSer(context, ref);
    // Future.microtask(() {
    //   // _retrieveAdminData();
    // });
  }

  @override
  void dispose() {
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

    final theme = Theme.of(context);

    final bottomAppBarIndex = ref.watch(dashboardBottomAppBarIndexProvider);
    // final adminRole = ref.watch(adminRoleProvider); // discountinued due to code refactoration
    final adminData = ref.watch(signInUsingUNPasswordProvider);

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
      child: adminData.when(
        loading: () => Center(
          child: OverlayLoaderWithAppIconHelper(isLoading: true),
        ),
        error: (erro, stack) => Center(
          child: Text(
            'Something went wrong. Please try again later',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        data: (data) {
          final adminRole = data.adminRole;
          return Scaffold(
            appBar: (isExtraSmallScreen || isSmallScreen || isMediumScreen)
                ? null
                : AppBar(
                    leading: Builder(
                      builder: (context) {
                        return AnimatedSwitcher(
                          duration: _duration,
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return RotationTransition(
                              turns: Tween(begin: 0.75, end: 1.0)
                                  .animate(animation),
                              child: FadeTransition(
                                  opacity: animation, child: child),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: IconButton(
                              key: ValueKey<bool>(_isCollapsed),
                              icon: Icon(
                                _isCollapsed ? Icons.menu : Icons.close,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isCollapsed = !_isCollapsed;
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: IconButton(
                          tooltip: 'Logout',
                          icon: Icon(Icons.logout_outlined),
                          onPressed: () {
                            _dialogCommon.showDialogMessageWithTwoActions(
                              context,
                              ref,
                              null,
                              'Are you sure you want to continue?',
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () => GoRouter.of(context).pop(),
                                  child: RetainTextScaleWrapper(
                                      child: const Text('Cancel')),
                                ),
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    // CookieManager.addToCookie('admin_id', null);
                                    // CookieManager.addToCookie('full_name', null);
                                    // CookieManager.addToCookie('admin_role', null);
                                    // CookieManager.removeCookie('admin_id'); // discontinued in the meantime
                                    // CookieManager.removeCookie('full_name');
                                    // CookieManager.removeCookie('admin_role');
                                    final futurePrefs = await ref
                                        .read(sharedPrefFutureProvider.future);
                                    final sharedPrefAdminID =
                                        await futurePrefs.removeAdminID() ??
                                            true;
                                    final sharedPrefFullname =
                                        await futurePrefs.removeFullname() ??
                                            true;
                                    final sharedPrefAdminRole =
                                        await futurePrefs.removeAdminRole() ??
                                            true;
                                    bool? isPersDataRemoved =
                                        (sharedPrefAdminID &&
                                            sharedPrefFullname &&
                                            sharedPrefAdminRole);
                                    FirebaseAuthHelper.signOutUser();

                                    if (isPersDataRemoved && context.mounted) {
                                      context.go('/glamgear');
                                    } else {
                                      if (context.mounted) {
                                        context.go('/glamgear');
                                      }
                                    }
                                  },
                                  child: RetainTextScaleWrapper(
                                    child: Text(
                                      'Confirm',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                                .withValues(alpha: 0.9),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
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
                                child: buildNavItem(
                                    EvaIcons.shoppingCartOutline,
                                    EvaIcons.shoppingCart,
                                    'Cart',
                                    1,
                                    badgeCount: '0'),
                              ),
                              SizedBox(
                                width: parentWidth,
                                child: buildNavItem(
                                  EvaIcons.messageSquareOutline,
                                  EvaIcons.messageSquare,
                                  'Messages',
                                  2,
                                  badgeCount: '0',
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
                      AnimatedContainer(
                        width: _isCollapsed
                            ? null
                            : _sidebarWidth, // null width fixes the issue of overflow exception of text
                        duration: _duration,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: buildSidebarItems(
                                adminRole, theme, _isCollapsed),
                            // [
                            //   _buildMenuItem(
                            //       theme: theme,
                            //       icon: CupertinoIcons.house_fill,
                            //       label: 'Dashboard'),
                            //   _buildExpandableMenuItem(
                            //       theme: theme,
                            //       key: 'products',
                            //       icon: CupertinoIcons.bag_fill,
                            //       label: 'Products',
                            //       children: [
                            //         _buildSubMenuItem(
                            //             theme: theme,
                            //             icon: CupertinoIcons.bag_fill_badge_plus,
                            //             label: 'Add Products'),
                            //         SizedBox(height: 8.0),
                            //         _buildSubMenuItem(
                            //             theme: theme,
                            //             icon: CupertinoIcons.bag_fill_badge_minus,
                            //             label: 'Manage Products'),
                            //       ]),
                            //   _buildExpandableMenuItem(
                            //       theme: theme,
                            //       key: 'orders',
                            //       icon: CupertinoIcons.doc_chart_fill,
                            //       label: 'Orders',
                            //       children: [
                            //         _buildSubMenuItem(
                            //             theme: theme,
                            //             icon: CupertinoIcons.doc_text_fill,
                            //             label: 'Order List'),
                            //         SizedBox(height: 8.0),
                            //         _buildSubMenuItem(
                            //             theme: theme,
                            //             icon: CupertinoIcons.arrow_up_doc_fill,
                            //             label: 'Return & Cancellations Orders'),
                            //         SizedBox(height: 8.0),
                            //         _buildSubMenuItem(
                            //             theme: theme,
                            //             icon: CupertinoIcons.doc_checkmark_fill,
                            //             label: 'Reviews'),
                            //       ]),
                            //   _buildExpandableMenuItem(
                            //       theme: theme,
                            //       key: 'users',
                            //       icon: CupertinoIcons.person_2_square_stack_fill,
                            //       label: 'Users',
                            //       children: [
                            //         _buildSubMenuItem(
                            //             theme: theme,
                            //             icon: CupertinoIcons
                            //                 .person_crop_circle_fill_badge_exclam,
                            //             label: 'New Users'),
                            //         SizedBox(height: 8.0),
                            //         _buildSubMenuItem(
                            //             theme: theme,
                            //             icon: CupertinoIcons
                            //                 .person_crop_circle_fill_badge_checkmark,
                            //             label: 'Regular Users'),
                            //         SizedBox(height: 8.0),
                            //         _buildSubMenuItem(
                            //             theme: theme,
                            //             icon: CupertinoIcons
                            //                 .person_crop_circle_fill_badge_minus,
                            //             label: 'Disabled Users'),
                            //       ]),
                            //   _buildMenuItem(
                            //       theme: theme,
                            //       icon: CupertinoIcons.chat_bubble_text_fill,
                            //       label: 'Messages'),
                            //   _buildMenuItem(
                            //       theme: theme,
                            //       icon: CupertinoIcons.person_alt_circle_fill,
                            //       label: 'Account'),
                            // ],
                          ),
                        ),
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
          );
        },
      ),
    );
  }
}

class _CollapsedSubMenuIconItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _CollapsedSubMenuIconItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      waitDuration: Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Icon(icon),
      ),
    );
  }
}

class MenuItemModel {
  final int index;
  final String id;
  final String label;
  final IconData icon;
  final List<String> requiredRoles;
  final List<MenuItemModel>? children;

  MenuItemModel({
    required this.index,
    required this.id,
    required this.label,
    required this.icon,
    required this.requiredRoles,
    this.children,
  });
}
