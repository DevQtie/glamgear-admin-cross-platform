import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import 'package:glamgear/api_protocols/auth_provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/main.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Settings extends ConsumerStatefulWidget {
  const Settings({super.key});

  @override
  ConsumerState<Settings> createState() => _SettingsState();
}

class _SettingsState extends ConsumerState<Settings> {
  // bool _isDark = true;
  final _dialogCommon = DialogCommon();
  String? _appVersion;

  Future<void> _getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    if (mounted) {
      setState(() {
        _appVersion = '${packageInfo.version} (${packageInfo.buildNumber})';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getAppVersion();
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
    MediaQuery.of(context).size.width <= 800;
    final customTheme = Theme.of(context).extension<CustomTheme>();
    // final Brightness brightness = MediaQuery.of(context).platformBrightness;
    // final bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: isExtraSmallScreen
            ? 50
            : kIsWeb
                ? 0
                : isExtraSmallScreen
                    ? 50
                    : isSmallScreen
                        ? 50
                        : isMediumScreen
                            ? 70
                            : isLargeScreen
                                ? 100
                                : 200,
        titleSpacing: isExtraSmallScreen
            ? 0
            : isSmallScreen
                ? kIsWeb
                    ? 0
                    : 0
                : isMediumScreen
                    ? 0
                    : isLargeScreen
                        ? 100
                        : 200,
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        // backgroundColor: colorScheme.surfaceContainerHighest,
        title: Wrap(
          spacing: 4.0,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            IconButton(
              icon: Icon(CupertinoIcons.chevron_left),
              onPressed: () {
                if (GoRouter.of(context).canPop()) {
                  GoRouter.of(context).pop();
                } else {
                  if (CookieManager.getCookie('settingsRoutes')
                      .toString()
                      .contains('/product-view/account')) {
                    context.go('/product-view/account'); // web only
                  } else {
                    (isExtraSmallScreen || isSmallScreen || isMediumScreen)
                        ? context.go('/account-pt')
                        : context.go('/account-b');
                  }
                }
              },
            ),
            RetainTextScaleWrapper(
              child: Text("Settings",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: colorScheme.surfaceContainerHighest),
          child: ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: isSmallScreen
                      ? const EdgeInsets.only(
                          top: 10.0, right: 16.0, bottom: 5.0, left: 16.0)
                      : isMediumScreen
                          ? const EdgeInsets.only(
                              top: 10.0, right: 70.0, bottom: 5.0, left: 70.0)
                          : isLargeScreen
                              ? const EdgeInsets.only(
                                  top: 10.0,
                                  right: 100.0,
                                  bottom: 5.0,
                                  left: 100.0)
                              : const EdgeInsets.only(
                                  top: 20.0,
                                  right: 200.0,
                                  bottom: 5.0,
                                  left: 200.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: customTheme?.containerBackgroundColor,
                      borderRadius: BorderRadius.circular(4.0), // Border radius
                      border:
                          Border.all(color: Colors.transparent), // Border color
                    ),
                    // padding: const EdgeInsets.all(15.0),
                    child: _SingleSection(
                      title: "General",
                      children: [
                        _CustomListTile(
                            title: "Account Information",
                            icon: Icons.person_outline_rounded,
                            trailing: null,
                            onTap: () {
                              null;
                            }),
                        _CustomListTile(
                            title: "Notifications",
                            icon: Icons.notifications_none_rounded,
                            trailing: null,
                            onTap: () {
                              null;
                            }),
                        _CustomListTile(
                            title: "Security and Password",
                            icon: EvaIcons.shieldOutline,
                            trailing: null,
                            onTap: () {
                              null;
                            }),
                      ],
                    ),
                  ),
                ),
              ),
              // const Divider(),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: isSmallScreen
                      ? const EdgeInsets.only(
                          top: 10.0, right: 16.0, bottom: 5.0, left: 16.0)
                      : isMediumScreen
                          ? const EdgeInsets.only(
                              top: 10.0, right: 70.0, bottom: 5.0, left: 70.0)
                          : isLargeScreen
                              ? const EdgeInsets.only(
                                  top: 10.0,
                                  right: 100.0,
                                  bottom: 5.0,
                                  left: 100.0)
                              : const EdgeInsets.only(
                                  top: 20.0,
                                  right: 200.0,
                                  bottom: 5.0,
                                  left: 200.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: customTheme?.containerBackgroundColor,
                      borderRadius: BorderRadius.circular(4.0), // Border radius
                      border:
                          Border.all(color: Colors.transparent), // Border color
                    ),
                    // padding: const EdgeInsets.all(15.0),
                    child: _SingleSection(
                      title: "Organization",
                      children: [
                        // _CustomListTile(
                        //     title: "Dark Mode",
                        //     icon: Icons.dark_mode_outlined,
                        //     trailing: Switch(
                        //         value: _isDark,
                        //         onChanged: (value) {
                        //           setState(() {
                        //             _isDark = value;
                        //           });
                        //         })),
                        _CustomListTile(
                            title: "Messaging",
                            icon: Icons.message_outlined,
                            trailing: null,
                            onTap: () {
                              null;
                            }),
                        // _CustomListTile(
                        //     title: "Calling",
                        //     icon: Icons.phone_outlined,
                        //     onTap: () {
                        //       null;
                        //     }),
                        // _CustomListTile(
                        //     title: "People",
                        //     icon: Icons.contacts_outlined,
                        //     onTap: () {
                        //       null;
                        //     }),
                        // _CustomListTile(
                        //     title: "Calendar",
                        //     icon: Icons.calendar_today_rounded,
                        //     onTap: () {
                        //       null;
                        //     })
                      ],
                    ),
                  ),
                ),
              ),
              // const Divider(),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: isSmallScreen
                      ? const EdgeInsets.only(
                          top: 10.0, right: 16.0, bottom: 5.0, left: 16.0)
                      : isMediumScreen
                          ? const EdgeInsets.only(
                              top: 10.0, right: 70.0, bottom: 5.0, left: 70.0)
                          : isLargeScreen
                              ? const EdgeInsets.only(
                                  top: 10.0,
                                  right: 100.0,
                                  bottom: 5.0,
                                  left: 100.0)
                              : const EdgeInsets.only(
                                  top: 20.0,
                                  right: 200.0,
                                  bottom: 5.0,
                                  left: 200.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: customTheme?.containerBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(4.0), // Border radius
                          border: Border.all(
                              color: Colors.transparent), // Border color
                        ),
                        // padding: const EdgeInsets.all(15.0),
                        child: _SingleSection(
                          children: [
                            _CustomListTile(
                                title: "Help",
                                icon: Icons.help_outline_rounded,
                                trailing: null,
                                onTap: () {
                                  null;
                                }),
                            _CustomListTile(
                                title: "Feedback",
                                icon: Icons.feedback_outlined,
                                trailing: null,
                                onTap: () {
                                  null;
                                }),
                            _CustomListTile(
                                title: "About",
                                icon: Icons.info_outline_rounded,
                                trailing: null,
                                onTap: () {
                                  null;
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            _dialogCommon.showDialogMessageWithTwoActions(
                              context,
                              ref,
                              null,
                              'Are you sure you want to continue?',
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: RetainTextScaleWrapper(
                                      child: const Text('Cancel')),
                                ),
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    final prefs = ref.read(
                                        sharedPrefProvider); // generally acceptable use of ref.read
                                    if (!kIsWeb) {
                                      // For mobile, perform logout and navigate to the sign-in screen
                                      bool? isPrefsRemoved = await prefs
                                          .removeAccountCredentials();

                                      if (context.mounted && isPrefsRemoved!) {
                                        context.go('/');
                                        // GoRouter.of(context).go('/');
                                        // GoRouter.of(context).pushReplacement('/');
                                      }
                                    } else {
                                      // For web, perform logout and navigate to the sign-in screen
                                      // await context.read<AuthProvider>().logout();
                                      if (context.mounted) {
                                        context.go('/');
                                        // GoRouter.of(context).pushReplacement('/');
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
                          child: RetainTextScaleWrapper(
                            child: Text("Log out"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        child: _appVersion == null
                            ? Center(
                                child: LoadingAnimationWidget.stretchedDots(
                                  color: Colors.white,
                                  size: 50,
                                ),
                              )
                            : RetainTextScaleWrapper(
                                child: Text(
                                  _appVersion!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap; // Added onTap callback
  const _CustomListTile(
      {required this.title,
      required this.icon,
      this.trailing,
      this.onTap}); // Accept onTap as a parameter

  @override
  Widget build(BuildContext context) {
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;
    final bool isExtraLargeScreen = MediaQuery.of(context).size.width > 1048 &&
        MediaQuery.of(context).size.width <= 1280;
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return Material(
      color: Colors.transparent,
      child: ListTile(
        title: RetainTextScaleWrapper(
          child: Text(
            title,
            style: TextStyle(
              color: isDarkMode ? Colors.white.withAlpha(240) : Colors.black87,
              fontSize: isExtraSmallScreen
                  ? 12
                  : isSmallScreen
                      ? 14
                      : isMediumScreen
                          ? 14
                          : isLargeScreen
                              ? 14
                              : isExtraLargeScreen
                                  ? 14
                                  : 16,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.75,
            ),
          ),
        ),
        leading: Icon(icon),
        trailing: trailing,
        onTap: onTap, // Use the onTap callback
      ),
    );
  }
}

class _SingleSection extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  const _SingleSection({
    this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RetainTextScaleWrapper(
              child: Text(
                title!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.75,
                ),
              ),
            ),
          ),
        Column(
          children: children,
        ),
      ],
    );
  }
}
