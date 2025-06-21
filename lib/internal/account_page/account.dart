import 'dart:async';
import 'dart:convert';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/global_hlpr_n_wdgt/ovrly_lder_w_app_ic.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:glamgear/main.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'dart:developer' as developer;
import 'package:badges/badges.dart' as badges;
// import 'package:provider/provider.dart';
// import 'package:glamgear/api_protocols/auth_provider.dart';
// import 'package:glamgear/signing/sign_in.dart';

class Account extends ConsumerStatefulWidget {
  const Account({super.key});

  @override
  ConsumerState<Account> createState() => _Account2State();
}

class _Account2State extends ConsumerState<Account> {
  String? _username;

  // final _dialogUncommon = DialogUncommon();
  final _scrollController = ScrollController();
  bool _isScrolledHeader = false;
  // bool _isFloatingRefreshButtonTriggered = false;
  // List? _frontIDData = [];
  String? _currentRoute;

  final _dialogUncommon = DialogUncommon();

  final List<Map<String, dynamic>> _accountIconsProperties = [
    {'icon': FontAwesomeIcons.solidCreditCard, 'label': 'To Pay'},
    {'icon': FontAwesomeIcons.boxesPacking, 'label': 'To Ship'},
    {'icon': FontAwesomeIcons.truck, 'label': 'To Receive'},
    {'icon': FontAwesomeIcons.boxArchive, 'label': 'Returns &\nCancellations'},
  ];

  Future<void> _loadUsernameData() async {
    final prefs = await ref.read(sharedPrefFutureProvider.future);
    String? updateState;
    updateState = await prefs.getUsername();
    await Future.delayed(Duration(
        milliseconds:
            (updateState == null) ? 1000 : 0)); // Simulate a delay if needed
    if (mounted) {
      setState(() {
        if (updateState == null) {
          _username == null;
          return;
        }
        _username = updateState.substring(0, 1).toUpperCase() +
            updateState.substring(1);
      });
    }
  }

  // Future<bool> _onRefresh() {
  //   return Future<bool>.delayed(const Duration(milliseconds: 500), () {
  //     setState(() {
  //       _isFloatingRefreshButtonTriggered = false;
  //     });
  //     return true;
  //   });
  // }

  double _devQtDefinedAppBarHeight() {
    return kToolbarHeight - 10;
  }

  // double _switchHeaderAndWidgetHeight() {
  //   return _isScrolledHeader ? kToolbarHeight - 10 : 0;
  // }

  // double _switchHeaderAndWidgetTopPadding() {
  //   return _isScrolledHeader ? 0 : (kToolbarHeight - 10) * 0.5;
  // }

  void _scrollMethodListener() {
    double scrollOffset = _scrollController.offset;

    if (scrollOffset > 5 && !_isScrolledHeader) {
      setState(() {
        _isScrolledHeader = true;
      });
    } else if (scrollOffset == 0 && _isScrolledHeader) {
      setState(() {
        _isScrolledHeader = false;
      });
    }
  }

  // Future<void> _loadFrontIDData() async {
  //   ref.read(retrieveOptImgProvider('/api/postget/retrieve_lss2c_test_img'));
  // }

  Widget _masonryGridView(
    List<dynamic> data,
    BuildContext context,
    bool isExtraSmallScreen,
    bool isSmallScreen,
    bool isMediumScreen,
    bool isLargeScreen,
    bool isExtraLargeScreen,
  ) {
    return MasonryGridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isExtraSmallScreen
          ? 2
          : isSmallScreen
              ? 2
              : isMediumScreen
                  ? 2
                  : isLargeScreen
                      ? 3
                      : isExtraLargeScreen
                          ? 3
                          : 5,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 0.0,
      crossAxisSpacing: 0.0,
      itemCount: _buildGridCards(data, context, 0, 0).length,
      // TODO: Build a grid of cards (102)
      itemBuilder: (BuildContext context, int index) {
        return LayoutBuilder(builder: (context, constraint) {
          final parentWidth = constraint.maxWidth;
          final parentHeight = constraint.maxHeight;
          return _buildGridCards(
              data, context, parentWidth, parentHeight)[index];
        });
      },
    );
  }

  List<Widget> _buildGridCards(List<dynamic> data, BuildContext context,
      double parentWidth, double parentHeight) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;

    // developer.log('DIO DATA: $data'); // testing purposes

    // developer.log('WHICH TYPE: ${data.runtimeType}');

    // developer.log('Check status: ${data.isLoading}');

    final ThemeData theme = Theme.of(context);

    return data.map((filestream) {
      var imgName = filestream['img_name'];
      var dtStamp = filestream['dt_stamp'];
      var base64Image = filestream['img_data'];
      var fileSize = filestream['file_size'];
      return InkWell(
        onTap: () {},
        child: Card(
          color: isDarkMode
              ? Colors.grey.shade800.withValues(alpha: 0.45)
              : Colors.grey.shade100,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(4), // Adjust the radius as needed
          ),
          // TODO: Adjust card heights (103)
          child: Column(
            // TODO: Center items on the card (103)
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 18 /
                        19, //108 / 66, //54 / 33, //18 / 11, //The default is 18 / 11
                    child: Image.memory(
                      base64Decode(base64Image),
                      // TODO: Adjust the box size (102)
                      fit: BoxFit.cover,
                      //gaplessPlayback: true, // Prevents flickering when the widget reloads
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: parentWidth,
                      height: parentHeight,
                      color: Colors.black87.withValues(alpha: 0.5),
                      child: Center(
                        child: RetainTextScaleWrapper(
                          child: Text(
                            'For Testing Purposes',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
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
                    RetainTextScaleWrapper(
                      child: Text(
                        imgName,
                        style: theme.textTheme.titleLarge!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.normal),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 2.0),
                    RetainTextScaleWrapper(
                      child: Text(
                        dtStamp,
                        style: theme.textTheme.titleSmall!.copyWith(
                            fontSize: isExtraSmallScreen
                                ? 12
                                : isSmallScreen
                                    ? 14
                                    : isMediumScreen
                                        ? 14
                                        : isLargeScreen
                                            ? 12
                                            : 16,
                            color: const Color.fromARGB(255, 243, 33, 92)),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    RetainTextScaleWrapper(
                      child: Text(
                        '$fileSize KB',
                        style: theme.textTheme.bodySmall!.copyWith(
                            // fontSize: isExtraSmallScreen
                            //     ? 14
                            //     : isSmallScreen
                            //         ? 18
                            //         : isMediumScreen
                            //             ? 18
                            //             : isLargeScreen
                            //                 ? 16
                            //                 : 22,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 243, 33, 92)),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  void _initCurrentRoute() {
    if (mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {
          _currentRoute =
              GoRouterState.of(context).uri.toString(); // to get current route
        });
      });
    }
  }

  Widget _buildIconItem(
      Map<String, dynamic> data,
      double parentWidth,
      int horizontalItemCount,
      ThemeData theme,
      String badgeCountTP,
      String badgeCountTS,
      String badgeCountTR,
      String badgeCountRC) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    final bcTPIsShowBadge = int.parse(badgeCountTP.replaceAll('+', ''));
    final bcTSIsShowBadge = int.parse(badgeCountTS.replaceAll('+', ''));
    final bcTRIsShowBadge = int.parse(badgeCountTR.replaceAll('+', ''));
    final bcRCIsShowBadge = int.parse(badgeCountRC.replaceAll('+', ''));
    return Wrap(
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.start,
      children: [
        // IconButton with custom icon
        Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: isDarkMode
                ? Colors.grey.shade100.withValues(alpha: 0.25)
                : Colors.grey.shade200,
            child: Container(
              width: parentWidth / horizontalItemCount,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    badges.Badge(
                      position: badges.BadgePosition.topEnd(top: -10, end: -8),
                      showBadge: (data['label'].toLowerCase().contains('pay'))
                          ? bcTPIsShowBadge > 0
                          : (data['label'].toLowerCase().contains('ship'))
                              ? bcTSIsShowBadge > 0
                              : (data['label']
                                      .toLowerCase()
                                      .contains('receive'))
                                  ? bcTRIsShowBadge > 0
                                  : bcRCIsShowBadge >
                                      0, // Show badge only if count is greater than 0
                      badgeContent: Padding(
                        padding: const EdgeInsets.all(1),
                        child: RetainTextScaleWrapper(
                          child: Text(
                            (data['label'].toLowerCase().contains('receive'))
                                ? badgeCountTR
                                : (data['label'].toLowerCase().contains('ship'))
                                    ? badgeCountTS
                                    : (data['label']
                                            .toLowerCase()
                                            .contains('pay'))
                                        ? badgeCountTP
                                        : badgeCountRC,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      badgeStyle: badges.BadgeStyle(
                        shape: ((data['label'].toLowerCase().contains('pay') &&
                                    bcTPIsShowBadge > 9) ||
                                (data['label'].toLowerCase().contains('ship') &&
                                    bcTSIsShowBadge > 9) ||
                                (data['label']
                                        .toLowerCase()
                                        .contains('receive') &&
                                    bcTRIsShowBadge > 9) ||
                                (data['label']
                                        .toLowerCase()
                                        .contains('returns') &&
                                    bcRCIsShowBadge > 9))
                            ? badges.BadgeShape.square
                            : badges.BadgeShape.circle,
                        badgeColor: const Color.fromARGB(255, 243, 33, 92),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3.75, vertical: 1),
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0.75),
                        elevation: 0,
                      ), // Customize the badge color
                      child: (data['label'].toLowerCase().contains('receive'))
                          ? Transform.flip(
                              flipX: true,
                              child: Icon(data['icon'],
                                  color: isDarkMode
                                      ? const Color.fromARGB(190, 255, 193, 7)
                                      : Colors.lightBlue,
                                  size: 20),
                            )
                          : Icon(data['icon'],
                              color: isDarkMode
                                  ? const Color.fromARGB(190, 255, 193, 7)
                                  : Colors.lightBlue,
                              size: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: RetainTextScaleWrapper(
                        child: Text(
                          data['label'],
                          style: theme.textTheme.bodySmall!.copyWith(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              // Handle icon button tap
              if (data['label'].toLowerCase().contains('pay')) {
                ref
                    .read(myOrdersTabBarIndexProvider.notifier)
                    .setIndex(index: 0);
              } else if (data['label'].toLowerCase().contains('ship')) {
                ref
                    .read(myOrdersTabBarIndexProvider.notifier)
                    .setIndex(index: 1);
              } else if (data['label'].toLowerCase().contains('receive')) {
                ref
                    .read(myOrdersTabBarIndexProvider.notifier)
                    .setIndex(index: 2);
              } else if (data['label'].toLowerCase().contains('returns')) {
                ref
                    .read(myOrdersTabBarIndexProvider.notifier)
                    .setIndex(index: 4);
              } else {
                ref
                    .read(myOrdersTabBarIndexProvider.notifier)
                    .setIndex(index: 0);
              }

              kIsWeb
                  ? context.go('/product-view/account/my-orders')
                  : GoRouter.of(context).push('/my-orders');
            },
          ),
        ),
        // Label underneath
      ],
    );
  }

  Future<void> _refreshAccountData() async {
    final futurePrefs = await ref.read(sharedPrefFutureProvider.future);

    final sharedPrefUserID = await futurePrefs.getUsername();
    ref.invalidate(retrieveBadgeDataProvider);
    ref.invalidate(dNameMyOrdersBadgeCountsProvider);
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
    _loadUsernameData();

    _scrollController.addListener(_scrollMethodListener);
    // _loadFrontIDData();
    _initCurrentRoute();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollMethodListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var colorScheme = Theme.of(context).colorScheme;
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;
    final bool isExtraLargeScreen = MediaQuery.of(context).size.width > 1048 &&
        MediaQuery.of(context).size.width <= 1280;
    final customTheme = Theme.of(context).extension<CustomTheme>();
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    // final double statusBarHeight = MediaQuery.of(context).padding.top;
    // developer.log('Data test: $_username');

    final disNameNBC = ref.watch(dNameMyOrdersBadgeCountsProvider);

    final ThemeData theme = Theme.of(context);

    // Set the system UI overlay style (status bar)
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: isScrolledHeader
    //         ? Colors.transparent
    //         : Color.fromARGB(190, 255, 193, 7)
    //             .withValues(alpha: 0.3), // Makes the status bar transparent
    //     statusBarBrightness: Brightness.light, // Status bar icons (for iOS)
    //     statusBarIconBrightness:
    //         Brightness.dark, // Status bar icons (for Android)
    //   ),
    // );

    // final AsyncValue<List<dynamic>> data = ref
    //     .watch(retrieveOptImgProvider('/api/postget/retrieve_lss2c_test_img'));

    return RefreshIndicator(
      onRefresh: _refreshAccountData,
      child: Scaffold(
        backgroundColor: kIsWeb
            ? isDarkMode
                ? Colors.grey[850]
                : Colors.grey.shade300
            : _isScrolledHeader
                ? isDarkMode
                    ? Colors.grey[850]
                    : Colors.grey.shade100
                : isDarkMode
                    ? Colors.lightBlue
                    : const Color.fromARGB(190, 255, 193, 7),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: isSmallScreen
              ? const EdgeInsets.only(
                  top: 0.0, right: 0.0, bottom: 0.0, left: 0.0)
              : isMediumScreen
                  ? const EdgeInsets.only(
                      top: 0.0, right: 70.0, bottom: 0.0, left: 70.0)
                  : isLargeScreen
                      ? const EdgeInsets.only(
                          top: 0.0, right: 100.0, bottom: 0.0, left: 100.0)
                      : const EdgeInsets.only(
                          top: 0.0, right: 200.0, bottom: 0.0, left: 200.0),
          decoration: BoxDecoration(
            color: isDarkMode
                ? Colors.grey[850]
                : Colors.grey.shade300, //shade100,
          ),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: customTheme?.containerBackgroundColor,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Icon(
                      CupertinoIcons.xmark,
                      size: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                // switch (data) {
                //   AsyncData(:final value) => Expanded(
                //       child: _masonryGridView(
                //           value,
                //           context,
                //           isExtraSmallScreen,
                //           isSmallScreen,
                //           isMediumScreen,
                //           isLargeScreen,
                //           isExtraLargeScreen),
                //     ),
                //   AsyncError() => Expanded(
                //       child: Center(
                //         child: RetainTextScaleWrapperWidget(
                //           child: const Text(
                //               'Oops, something unexpected happened.'),
                //         ),
                //       ),
                //     ),
                //   _ => Expanded(
                //       child: Center(
                //         child: OverlayLoaderWithAppIconHelper(
                //             isLoading: data.isLoading),
                //       ),
                //     ),
                // }, // for testing purposes
              ],
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   tooltip: 'Refresh',
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        //   child: const Icon(Icons.refresh),
        //   onPressed: () {
        //     // setState(() {
        //     //   _isFloatingRefreshButtonTriggered = true;
        //     // });
        //     // refreshKey.currentState!.show(
        //     //   notificationDragOffset: maxDragOffset,
        //     // );
        //   },
        // ),
      ),
    );
  }
}
