import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glamgear/dart_logo/raquel_logo.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class SignUpOptions extends StatefulWidget {
  const SignUpOptions({super.key});

  @override
  State<SignUpOptions> createState() => _SignUpOptionsState();
}

// do not tats
class _SignUpOptionsState extends State<SignUpOptions> {
  bool _randomAppBarState = false;
  bool _isHoveredAcc = false;
  final _countryCode = '+63';
  final _dialogUncommon = DialogUncommon();

  @override
  void initState() {
    super.initState();
    Random randomizer = Random();
    setState(() {
      _randomAppBarState = randomizer.nextDouble() <= 0.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return PopScope<Object?>(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (didPop) {
          return;
        }
        context.go('/');
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: _randomAppBarState
              ? IconButton(
                  onPressed: () {
                    context.go('/');
                  },
                  icon: Icon(CupertinoIcons.chevron_left),
                )
              : null,
          title: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              _randomAppBarState
                  ? SizedBox()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            'assets/icons/glamgear_app_icon.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        RetainTextScaleWrapper(
                          child: Text(
                            "GlamGear",
                            textAlign: isSmallScreen
                                ? TextAlign.center
                                : TextAlign.start,
                            style: isSmallScreen
                                ? Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontFamily: 'noto-sans')
                                : Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontFamily: 'noto-sans'),
                            semanticsLabel: "GlamGear",
                          ),
                        ),
                      ],
                    ),
              _randomAppBarState
                  ? SizedBox()
                  : Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                          context.go('/');
                        },
                        icon: Icon(CupertinoIcons.clear_thick),
                      ),
                    ),
            ],
          ),
        ),
        body: Padding(
          padding: _randomAppBarState
              ? EdgeInsets.only(top: 0, right: 8, bottom: 0, left: 8.0)
              : const EdgeInsets.only(top: 8.0, right: 8, left: 8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: _randomAppBarState
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _randomAppBarState
                        ? GetLogo(
                            path: 'assets/icons/glamgear_app_icon.png',
                            size: isSmallScreen ? 100 : 200,
                            kIsWeb: kIsWeb,
                            isSvgSpecific: false,
                          )
                        : SizedBox(),
                    _randomAppBarState
                        ? Padding(
                            padding: const EdgeInsets.all(10), //16.0
                            child: RetainTextScaleWrapper(
                              child: Text(
                                "GlamGear",
                                textAlign: isSmallScreen
                                    ? TextAlign.center
                                    : TextAlign.start,
                                style: isSmallScreen
                                    ? Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.copyWith(fontFamily: 'noto-sans')
                                    : Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(fontFamily: 'noto-sans'),
                                semanticsLabel: "GlamGear",
                              ),
                            ),
                          )
                        : SizedBox(),
                    _randomAppBarState
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10), //16.0
                            child: RetainTextScaleWrapper(
                              child: Text(
                                "Raquel Pawnshop Online Selling App",
                                textAlign: isSmallScreen
                                    ? TextAlign.center
                                    : TextAlign.start,
                                style: isSmallScreen
                                    ? Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'noto-sans')
                                    : Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'noto-sans'),
                                semanticsLabel:
                                    "Raquel Pawnshop Online Showroom",
                              ),
                            ),
                          )
                        : SizedBox(),
                    _randomAppBarState
                        ? SizedBox()
                        : Image.asset(
                            'assets/images/Jewelry_demo_image_330x330_1.png',
                            height: MediaQuery.of(context).size.height * 0.35,
                            width: MediaQuery.of(context).size.height * 0.75,
                          ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton.icon(
                        onPressed: () {
                          if (kIsWeb) {
                            CookieManager.addToCookie('functionKey', 'sign-up');
                            CookieManager.addToCookie('isRegistration', true);
                            context.go('///access-thru-mobile-no', extra: {
                              'functionKey': 'sign-up',
                              'isRegistration': true
                            });
                          } else {
                            GoRouter.of(context).push('/access-thru-mobile-no',
                                extra: {
                                  'functionKey': 'sign-up',
                                  'isRegistration': true
                                });
                          }
                        },
                        icon: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RetainTextScaleWrapper(
                              child: Text(
                                _countryCode,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: isDarkMode
                                            ? const Color.fromARGB(
                                                100, 255, 255, 255)
                                            : Colors.black54),
                              ),
                            ),
                          ],
                        ),
                        label: const RetainTextScaleWrapper(
                          child: Text(
                            'Sign up with mobile number',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        const Expanded(
                            child: Opacity(opacity: 0.1, child: Divider())),
                        const SizedBox(width: 5),
                        RetainTextScaleWrapper(
                          child: Text("OR",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(width: 5),
                        const Expanded(
                            child: Opacity(opacity: 0.1, child: Divider())),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          _dialogUncommon.showAutoDismissDialog(
                              context,
                              'Coming soon...',
                              CupertinoIcons.settings,
                              Colors.blueAccent);
                        },
                        icon: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white70,
                          child: Image.asset(
                            'assets/icons/google_icon2.png',
                            width: 24,
                            height: 24,
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextButton(
                    onHover: (isHovered) =>
                        setState(() => _isHoveredAcc = isHovered),
                    onPressed: () {
                      context.go('/');
                    },
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        decoration: _isHoveredAcc
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75,
                      ),
                      foregroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: RetainTextScaleWrapper(
                        child: const Text('I already have an account')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
