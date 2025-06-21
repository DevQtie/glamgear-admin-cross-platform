// import 'package:flutter/cupertino.dart';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart' as provider;
import 'package:glamgear/dart_logo/raquel_logo.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/pop_scope_wdgt_lnwd.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/internal/data_model/local_storage/shared_pref.dart';
import 'package:glamgear/main.dart';
// import 'dart:developer' as developer;

class SignUp extends ConsumerStatefulWidget {
  // just a reference for sign up / registration. Replaced with other concept.
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  final _dialogCommon = DialogCommon();

  FocusNode? _focusNodeMn;
  FocusNode? _focusNodeCrP;
  FocusNode? _focusNodeCnP;

  @override
  void initState() {
    super.initState();
    _focusNodeMn = FocusNode();
    _focusNodeCrP = FocusNode();
    _focusNodeCnP = FocusNode();
    Future.delayed(const Duration(milliseconds: 250)).then((_) {
      _focusNodeMn!.requestFocus();
    }); //this is useful to avoid having lag/buffer delay
  }

  @override
  void dispose() {
    _focusNodeMn!.dispose();
    _focusNodeCrP!.dispose();
    _focusNodeCnP!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;

    return KeyboardVisibilityBuilder(builder: (context, visible) {
      return PopScopeWidgetListNodeswithDialog(
        focusNodes: [_focusNodeMn, _focusNodeCrP, _focusNodeCnP],
        visible: visible,
        context: context,
        title: 'Unsaved Changes',
        contentText:
            'Are you sure you want to discard your registration progress?',
        firstAction: TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: RetainTextScaleWrapper(child: const Text('Cancel')),
        ),
        secondAction: TextButton(
          onPressed: () {
            // kIsWeb
            //     ? context.go('/') //context.go('/product-view')
            //     : GoRouter.of(context)
            //         .pushReplacement(Uri(path: '/').toString()); // you can remove URI here, except the path argument
            context.go('/');
          },
          child: RetainTextScaleWrapper(child: const Text('Confirm')),
        ),
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  _dialogCommon.showDialogMessageWithTwoActions(
                    context,
                    ref,
                    'Unsaved Changes',
                    'Are you sure you want to discard your sign-up progress?',
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child:
                            RetainTextScaleWrapper(child: const Text('Cancel')),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // kIsWeb
                          //     ? context.go('/') //context.go('/product-view')
                          //     : GoRouter.of(context)
                          //         .pushReplacement(Uri(path: '/').toString()); // you can remove URI here, except the path argument
                          context.go('/');
                        },
                        child: RetainTextScaleWrapper(
                            child: Text(
                          'Confirm',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white.withValues(alpha: 0.9),
                                  ),
                        )),
                      ),
                    ),
                  );
                },
                icon: Icon(CupertinoIcons.chevron_left),
              ),
              // automaticallyImplyLeading:
              //     false, // This hides the default back button
              // leading: IconButton(
              //   icon: const Icon(Icons.arrow_back_ios_rounded),
              //   onPressed: () {
              //     // kIsWeb
              //     //     ? context.go('/route')
              //     //     : GoRouter.of(context).pushReplacement('/route');
              //     GoRouter.of(context).pop();
              //   },
              // ),
              leadingWidth: kIsWeb
                  ? 0
                  : isSmallScreen
                      ? 50
                      : isMediumScreen
                          ? 100
                          : 200,
              titleSpacing: isSmallScreen
                  ? kIsWeb
                      ? 32
                      : 0
                  : isMediumScreen
                      ? 100
                      : 200,
              forceMaterialTransparency: true,
              // backgroundColor: colorScheme.surfaceContainerHighest,
              title: RetainTextScaleWrapper(
                child: Text(
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                    'Sign Up'),
              ),
            ),
            body: Container(
              color: colorScheme.surfaceContainerHighest,
              child: Center(
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: isSmallScreen
                        ? const EdgeInsets.all(0)
                        : const EdgeInsets.all(32.0),
                    child: Center(
                        child: isSmallScreen
                            ? Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _Logo(),
                                    SizedBox(height: 10),
                                    _FormContent(
                                        focusNodeMn: _focusNodeMn,
                                        focusNodeCrP: _focusNodeCrP,
                                        focusNodeCnP: _focusNodeCnP),
                                  ],
                                ),
                              )
                            : Container(
                                padding: const EdgeInsets.all(32.0), //32.0
                                constraints:
                                    const BoxConstraints(maxWidth: 800),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Expanded(child: _Logo()),
                                    Expanded(
                                      child: isSmallScreen
                                          ? Center(
                                              child: _FormContent(
                                                  focusNodeMn: _focusNodeMn,
                                                  focusNodeCrP: _focusNodeCrP,
                                                  focusNodeCnP: _focusNodeCnP))
                                          : Align(
                                              alignment: Alignment.centerRight,
                                              child: _FormContent(
                                                  focusNodeMn: _focusNodeMn,
                                                  focusNodeCrP: _focusNodeCrP,
                                                  focusNodeCnP: _focusNodeCnP),
                                            ),
                                    ),
                                  ],
                                ),
                              )),
                  ),
                ),
              ),
            )),
      );
    });
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: isSmallScreen
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            //FlutterLogo(size: isSmallScreen ? 100 : 200),
            GetLogo(
              path: 'assets/icons/glamgear_app_icon.png',
              size: isSmallScreen ? 100 : 200,
              kIsWeb: kIsWeb,
              isSvgSpecific: false,
            ),
            Padding(
              padding: const EdgeInsets.all(10), //16.0
              child: RetainTextScaleWrapper(
                child: Text(
                  "Great deals are waiting for you!",
                  textAlign: isSmallScreen ? TextAlign.center : TextAlign.start,
                  style: isSmallScreen
                      ? Theme.of(context).textTheme.headlineLarge?.copyWith()
                      : Theme.of(context).textTheme.headlineMedium?.copyWith(),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class _FormContent extends ConsumerStatefulWidget {
  final FocusNode? focusNodeMn;
  final FocusNode? focusNodeCrP;
  final FocusNode? focusNodeCnP;
  const _FormContent(
      {required this.focusNodeMn,
      required this.focusNodeCrP,
      required this.focusNodeCnP});

  @override
  ConsumerState<_FormContent> createState() => _FormContentState();
}

class _FormContentState extends ConsumerState<_FormContent> {
  bool _isPasswordVisible = false;
  bool _isPasswordVisibleConf = false;
  // bool _privacyAndTerms = false;
  // bool _isHoveredPP = false;
  // bool _isHoveredToS = false;
  bool _isHoveredAcc = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _dialogCommon = DialogCommon();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfController = TextEditingController();
  final _countryCode = '+63';
  // final GlobalKey _shakeKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _passwordConfController.dispose();
    super.dispose();
  }

  // void _validate() {
  //   if (_formKey.currentState?.validate() == false) {
  //     // Rebuild the ShakeWidget to trigger the animation
  //     setState(() {
  //       _shakeKey.currentContext;
  //     });
  //   } else {
  //     final dataModel = Provider.of<DataModel>(context, listen: false);
  //     String mobileNoStringInterpolation =
  //         '$_countryCode${_usernameController.text}';

  //     dataModel.saveAccountCredentialsForAccountRecovery(
  //         mobileNoStringInterpolation);

  //     /// do something
  //     // kIsWeb
  //     //     ? context.go('/otp-verifier',
  //     //         extra: true) //context.go('/product-view')
  //     //     : GoRouter.of(context).pushReplacement(
  //     //         Uri(path: '/otp-verifier').toString(), // you can remove URI here, except the path argument
  //     //         extra: true);
  //     context.go('/otp-verifier', extra: true);
  //   }
  // } // not working as expected

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();
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

    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: customTheme?.containerBackgroundColor,
        borderRadius: BorderRadius.circular(4.0), // Border radius
        border: Border.all(color: Colors.transparent), // Border color
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RetainTextScaleWrapper(
              child: TextFormField(
                focusNode: widget.focusNodeMn,
                controller: _usernameController,
                maxLength: 10,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                textInputAction: TextInputAction.next,
                validator: (value1) {
                  // add email validation
                  if (value1 == null || value1.isEmpty) {
                    return 'Required';
                  }

                  if (value1.length < 10 || !RegExp(r'^9').hasMatch(value1)) {
                    widget.focusNodeMn!.requestFocus();
                    return 'Invalid entries';
                  }

                  // bool emailValid = RegExp(
                  //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  //     .hasMatch(value1);
                  // if (!emailValid) {
                  //   return 'Please enter a valid email';
                  // }

                  return null;
                },
                style: TextStyle(
                  color: isDarkMode
                      ? const Color.fromARGB(215, 255, 255, 255)
                      : Colors.black87,
                  letterSpacing: 0.75,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: isDarkMode
                        ? const Color.fromARGB(215, 255, 255, 255)
                        : Colors.black54,
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
                  hintText: 'Phone number',
                  prefixIcon: Column(
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
                                      ? const Color.fromARGB(100, 255, 255, 255)
                                      : Colors.black54),
                        ),
                      ),
                    ],
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            _gap(),
            RetainTextScaleWrapper(
              child: TextFormField(
                key: const ValueKey('create'),
                focusNode: widget.focusNodeCrP,
                controller: _passwordController,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(widget.focusNodeCnP);
                },
                validator: (value2) {
                  if (value2 == null || value2.isEmpty) {
                    return 'Required';
                  }

                  if (value2.length < 8) {
                    return 'Password must be at least 8 characters';
                  } // please use regexp instead of verbose if statements validations, note from DevQT
                  return null;
                },
                style: TextStyle(
                  color: isDarkMode
                      ? const Color.fromARGB(215, 255, 255, 255)
                      : Colors.black87,
                  letterSpacing: 0.75,
                ),
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: isDarkMode
                          ? const Color.fromARGB(215, 255, 255, 255)
                          : Colors.black54,
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
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.key_rounded),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(_isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )),
              ),
            ),
            _gap(),
            RetainTextScaleWrapper(
              child: TextFormField(
                key: const ValueKey('confirm'),
                focusNode: widget.focusNodeCnP,
                controller: _passwordConfController,
                textInputAction: TextInputAction.done,
                validator: (value3) {
                  if (value3 == null || value3.isEmpty) {
                    return 'Required';
                  }

                  if (value3.length < 8) {
                    return 'Password must be at least 8 characters';
                  } // please use regexp instead of verbose if statements validations, note from DevQT
                  return null;
                },
                style: TextStyle(
                  color: isDarkMode
                      ? const Color.fromARGB(215, 255, 255, 255)
                      : Colors.black87,
                  letterSpacing: 0.75,
                ),
                obscureText: !_isPasswordVisibleConf,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: isDarkMode
                          ? const Color.fromARGB(215, 255, 255, 255)
                          : Colors.black54,
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
                    hintText: 'Confirm password',
                    prefixIcon: const Icon(Icons.key_rounded),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(_isPasswordVisibleConf
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisibleConf = !_isPasswordVisibleConf;
                        });
                      },
                    )),
              ),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RetainTextScaleWrapper(
                    child: Text(
                      'Continue',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onPressed: //_validate,
                    () {
                  if (_formKey.currentState?.validate() ?? false) {
                    final dataModel =
                        provider.Provider.of<DataModel>(context, listen: false);
                    String mobileNoStringInterpolation =
                        '$_countryCode${_usernameController.text}';

                    dataModel.saveAccountCredentialsForAccountRecovery(
                        mobileNoStringInterpolation);

                    /// do something
                    kIsWeb
                        ? context.go('/sign-up/otp-verifier', extra: {
                            'functionKey': 'sign-up',
                            'isRegistration': true
                          }) //context.go('/product-view') // outdated setup
                        : GoRouter.of(context).push('/otp-verifier', extra: {
                            'functionKey': 'sign-up',
                            'isRegistration': true
                          }); // outdated setup
                    // context.go('/otp-verifier', extra: true);
                  }
                },
              ),
            ),
            // _gap(), //I need to provide this end-user agreement on start-up (only once) before they actually use the app.
            // Row(
            //   children: [
            //     Checkbox(
            //       value: _privacyAndTerms,
            //       onChanged: (value) {
            //         if (value == null) return;
            //         setState(() {
            //           _privacyAndTerms = value;
            //         });
            //       },
            //       splashRadius: 0,
            //     ),
            //     const SizedBox(width: 10),
            //     Expanded(
            //       child: Wrap(
            //         spacing: 2,
            //         runSpacing: 5,
            //         alignment: WrapAlignment.start,
            //         children: [
            //           TextButton(
            //               onPressed: null,
            //               style: TextButton.styleFrom(
            //                 disabledForegroundColor: Colors.black,
            //                 padding: EdgeInsets.zero,
            //                 minimumSize: const Size(50, 30),
            //                 tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //                 alignment: Alignment.centerLeft,
            //               ),
            //               child: Text('I have read and agree to the ',
            //                   style: Theme.of(context)
            //                       .textTheme
            //                       .bodySmall
            //                       ?.copyWith(
            //                           fontWeight: FontWeight.bold,
            //                           fontSize: 12))),
            //           TextButton(
            //             onHover: (isHovered) =>
            //                 setState(() => _isHoveredToS = isHovered),
            //             onPressed: () {
            //               // Navigate to terms of service
            //               // Navigator.push(
            //               //   context,
            //               //   MaterialPageRoute(
            //               //       builder: (context) => const TermsOfService()),
            //               // );
            //               // Navigator.pushNamed(context, '/terms-of-service');
            //               kIsWeb
            //                   ? context.go('/terms-of-service')
            //                   : GoRouter.of(context).push('/terms-of-service');
            //             },
            //             style: TextButton.styleFrom(
            //               textStyle: TextStyle(
            //                   decoration: _isHoveredToS
            //                       ? TextDecoration.underline
            //                       : TextDecoration.none,
            //                   letterSpacing: 0.75,),
            //               foregroundColor: Colors.blueAccent,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(4)),
            //               padding: const EdgeInsets.all(0),
            //               minimumSize: const Size(50, 30),
            //               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //               alignment: Alignment.center,
            //             ),
            //             child: const Text('terms of service'),
            //           ),
            //           TextButton(
            //               onPressed: null,
            //               style: TextButton.styleFrom(
            //                 disabledForegroundColor: Colors.black,
            //                 padding: const EdgeInsets.all(5.0),
            //                 minimumSize: const Size(0, 30),
            //                 tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //                 alignment: Alignment.center,
            //               ),
            //               child: Text('and',
            //                   style: Theme.of(context)
            //                       .textTheme
            //                       .bodySmall
            //                       ?.copyWith(
            //                           fontWeight: FontWeight.bold,
            //                           fontSize: 12))),
            //           TextButton(
            //             onHover: (isHovered) =>
            //                 setState(() => _isHoveredPP = isHovered),
            //             onPressed: () {
            //               // Navigate to privacy policy
            //               // Navigator.push(
            //               //   context,
            //               //   MaterialPageRoute(
            //               //       builder: (context) => const PrivacyPolicy()),
            //               // );
            //               // Navigator.pushNamed(context, '/privacy-policy');
            //               kIsWeb
            //                   ? context.go('/privacy-policy')
            //                   : GoRouter.of(context).push('/privacy-policy');
            //             },
            //             style: TextButton.styleFrom(
            //               textStyle: TextStyle(
            //                   decoration: _isHoveredPP
            //                       ? TextDecoration.underline
            //                       : TextDecoration.none,
            //                   letterSpacing: 0.75,),
            //               foregroundColor: Colors.blueAccent,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(4)),
            //               padding: const EdgeInsets.all(0),
            //               minimumSize: const Size(50, 30),
            //               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //               alignment: Alignment.center,
            //             ),
            //             child: const Text('privacy policy.'),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 10),
            Opacity(opacity: 0.1, child: const Divider()),
            const SizedBox(height: 10),
            TextButton(
              onHover: (isHovered) => setState(() => _isHoveredAcc = isHovered),
              onPressed: () {
                //do something
                // Navigator.pop(context);
                // GoRouter.of(context).pop();

                _dialogCommon.showDialogMessageWithTwoActions(
                  context,
                  ref,
                  'Unsaved Changes',
                  'Are you sure you want to discard your sign-up progress?',
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child:
                          RetainTextScaleWrapper(child: const Text('Cancel')),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // kIsWeb
                        //     ? context.go('/') //context.go('/product-view')
                        //     : GoRouter.of(context)
                        //         .pushReplacement(Uri(path: '/').toString()); // you can remove URI here, except the path argument
                        context.go('/');
                      },
                      child: RetainTextScaleWrapper(
                          child: Text(
                        'Confirm',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withValues(alpha: 0.9),
                            ),
                      )),
                    ),
                  ),
                );
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
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);

  // Widget _divider() => const Divider(
  // height: 10, thickness: 2, color: Color.fromRGBO(139, 137, 137, 0.498));
}
