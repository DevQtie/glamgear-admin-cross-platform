import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:glamgear/comm/net_access.dart';
import 'package:glamgear/dart_logo/raquel_logo.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:glamgear/main.dart';
import 'package:local_auth/local_auth.dart';
import 'dart:developer' as developer;

class SignInOptions extends ConsumerStatefulWidget {
  const SignInOptions({super.key});

  @override
  ConsumerState<SignInOptions> createState() => _SignInOptionsState();
}

class _SignInOptionsState extends ConsumerState<SignInOptions> {
  Future<void> _checkCurrentlyLoggedInUser() async {
    // auto sign-in if already logged in
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final prefs = await ref.read(sharedPrefFutureProvider.future);
    bool isNull = await prefs.getAccountCredentials() == null ||
        await prefs.getAccountCredentials() == '';
    String? loggedInAs = await prefs.getAccountCredentials();
    developer.log('Logged in as: $loggedInAs');
    if (!mounted) {
      return;
    }
  }

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _checkCurrentlyLoggedInUser();
    // });
    Future.microtask(
        () => _checkCurrentlyLoggedInUser()); // it seems this works better
  }

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    // final Brightness brightness = MediaQuery.of(context).platformBrightness;
    // final bool isDarkMode = brightness == Brightness.dark;
    // final customTheme = Theme.of(context).extension<CustomTheme>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorScheme.surfaceContainerHighest,
          toolbarHeight:
              0, // I just want to resolve the notification drawer background color same as the container background color
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
                        ? const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _Logo(),
                              SizedBox(height: 10),
                              _FormContent(),
                            ],
                          )
                        : Container(
                            padding: const EdgeInsets.all(32.0), //32.0
                            constraints: const BoxConstraints(maxWidth: 800),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Expanded(child: _Logo()),
                                Expanded(
                                  child: isSmallScreen
                                      ? const Center(child: _FormContent())
                                      : const Align(
                                          alignment: Alignment.centerRight,
                                          child: _FormContent(),
                                        ),
                                ),
                              ],
                            ),
                          )),
              ),
            ),
          ),
        ));
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
                  "GlamGear",
                  textAlign: isSmallScreen ? TextAlign.center : TextAlign.start,
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10), //16.0
              child: RetainTextScaleWrapper(
                child: Text(
                  "Raquel Pawnshop Online Selling App",
                  textAlign: isSmallScreen ? TextAlign.center : TextAlign.start,
                  style: isSmallScreen
                      ? Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'noto-sans')
                      : Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'noto-sans'),
                  semanticsLabel: "Raquel Pawnshop Online Showroom",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _FormContent extends ConsumerStatefulWidget {
  const _FormContent();

  @override
  ConsumerState<_FormContent> createState() => _FormContentState();
}

class _FormContentState extends ConsumerState<_FormContent> {
  final NetworkManager _networkManager = NetworkManager();
  final _dialogUncommon = DialogUncommon();
  bool _isHoveredMN = false;
  bool _isHoveredPW = false;
  bool _isHoveredFP = false;
  bool _isHoveredSU = false;

  Future<void> _checkConnection() async {
    await _networkManager.checkInternetAvailability();
  }

  Future<void> _connectionCheckStatus() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    setState(() {
      _networkManager.connectionStatus;
    });
  }

  // final LocalAuthentication _auth = LocalAuthentication();

  @override
  void initState() {
    super.initState();
    _checkConnection();
    _networkManager.regStreamSubscription();
    _connectionCheckStatus();
  }

  @override
  void dispose() {
    _networkManager.disposeStreamSubscription();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    // final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
    //     MediaQuery.of(context).size.width <= 800;
    // final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
    //     MediaQuery.of(context).size.width <= 1048;
    // final bool isExtraLargeScreen = MediaQuery.of(context).size.width > 1048 &&
    //     MediaQuery.of(context).size.width <= 1280;
    final customTheme = Theme.of(context).extension<CustomTheme>();
    // final Brightness brightness = MediaQuery.of(context).platformBrightness;
    // final bool isDarkMode = brightness == Brightness.dark;
    // final dataModel = Provider.of<DataModel>(context);

    // dataModel.removeSharedPref();

    // final auth = kIsWeb ? null : Provider.of<AuthProvider>(context);
    //getDeviceInfo(); //To speed up development, I comment out this for now

    return Container(
      constraints: BoxConstraints(
        maxWidth: double.infinity,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: customTheme?.containerBackgroundColor,
        borderRadius: BorderRadius.circular(4.0), // Border radius
        border: Border.all(color: Colors.transparent), // Border color
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: CircleAvatar(
                radius: 14,
                backgroundColor: Colors.white70,
                child: Image.asset(
                  'assets/icons/google_icon2.png',
                  width: 24,
                  height: 24,
                ),
              ),
              iconAlignment: IconAlignment.start,
              onPressed: () {
                _dialogUncommon.showAutoDismissDialog(context, 'Coming soon...',
                    CupertinoIcons.settings, Colors.blueAccent);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                backgroundColor: null,
                foregroundColor: null,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
              label: RetainTextScaleWrapper(
                child: Text(
                  'Sign in using Google',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withValues(alpha: 0.9),
                      ),
                ), //Text('Log in with Google'),
              ),
            ),
          ),
          _gap(),
          Row(
            children: <Widget>[
              const Expanded(child: Opacity(opacity: 0.1, child: Divider())),
              const SizedBox(width: 5),
              RetainTextScaleWrapper(
                child: Text("OR SIGN IN",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(width: 5),
              const Expanded(child: Opacity(opacity: 0.1, child: Divider())),
            ],
          ),
          _gap(),
          Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              TextButton(
                onHover: (isHovered) =>
                    setState(() => _isHoveredMN = isHovered),
                onPressed: () {
                  CookieManager.addToCookie('functionKey', 'sign-in');
                  CookieManager.addToCookie('isRegistration', false);
                  GoRouter.of(context).push('/glamgear/access-thru-mobile-no',
                      extra: {
                        'functionKey': 'sign-in',
                        'isRegistration': false
                      });
                },
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontFamily: 'lato',
                        decoration: _isHoveredMN
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75,
                      ),
                  foregroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Wrap(
                  spacing: 2.0,
                  direction: Axis.horizontal,
                  children: [
                    Icon(
                      CupertinoIcons.device_phone_portrait,
                      size: 16,
                    ),
                    RetainTextScaleWrapper(child: Text('Thru Mobile Number')),
                  ],
                ),
              ),
              SizedBox(
                  height: 24,
                  child: Opacity(opacity: 0.1, child: VerticalDivider())),
              TextButton(
                onHover: (isHovered) =>
                    setState(() => _isHoveredPW = isHovered),
                onPressed: () {
                  GoRouter.of(context).push('/glamgear/sign-in-thru-password');
                },
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontFamily: 'lato',
                        decoration: _isHoveredPW
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75,
                      ),
                  foregroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Wrap(
                  spacing: 2.0,
                  direction: Axis.horizontal,
                  children: [
                    Icon(
                      Icons.key_outlined,
                      size: 16,
                    ),
                    RetainTextScaleWrapper(child: Text('Thru Password')),
                  ],
                ),
              ),
            ],
          ),
          _gap(),
          Opacity(opacity: 0.1, child: const Divider()),
          TextButton(
            onHover: (isHovered) => setState(() => _isHoveredFP = isHovered),
            onPressed: () async {
              //do something
              // if (_isChecking) {
              //   const CircularProgressIndicator();
              // } else {
              if (_networkManager.connectionStatus
                  .contains(ConnectivityResult.none)) {
                isSmallScreen
                    ? _networkManager.showInternetScaffoldMessenger(context)
                    : _networkManager.showNoInternetDialog(context);
              } else {
                GoRouter.of(context).push('/recover-account');
              }
            },
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontFamily: 'lato',
                    decoration: _isHoveredFP
                        ? TextDecoration.underline
                        : TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.75,
                  ),
              foregroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
            child:
                const RetainTextScaleWrapper(child: Text('Recover Account?')),
          ),
          // Opacity(opacity: 0.1, child: const Divider()), // To create an account
          // // _gap(),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          //     RetainTextScaleWrapper(
          //       child: Text(
          //         "Haven't signed up yet?",
          //         style: Theme.of(context).textTheme.bodySmall?.copyWith(
          //               fontFamily: 'lato',
          //               fontWeight: FontWeight.bold,
          //               letterSpacing: 0.75,
          //             ),
          //       ),
          //     ),
          //     TextButton(
          //       onHover: (isHovered) =>
          //           setState(() => _isHoveredSU = isHovered),
          //       onPressed: () {
          //         //do something
          //         if (_networkManager.connectionStatus
          //             .contains(ConnectivityResult.none)) {
          //           isSmallScreen
          //               ? _networkManager.showInternetScaffoldMessenger(context)
          //               : _networkManager.showNoInternetDialog(context);
          //         } else {
          //           // Navigator.push(
          //           //   context,
          //           //   RouteTransitions.slideTransition(const SignUp()),
          //           // );
          //           // Navigator.pushNamed(context, '/sign-up');
          //           ref.read(regStateNotifierProvider.notifier).switchState();
          //           GoRouter.of(context)
          //               .push('/terms-of-service'); //'/sign-up');
          //         }
          //       },
          //       style: TextButton.styleFrom(
          //         textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
          //               fontFamily: 'lato',
          //               decoration: _isHoveredSU
          //                   ? TextDecoration.underline
          //                   : TextDecoration.none,
          //               fontWeight: FontWeight.bold,
          //               letterSpacing: 0.75,
          //             ),
          //         foregroundColor: Colors.blueAccent,
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(4)),
          //       ),
          //       child: const RetainTextScaleWrapper(child: Text('Sign Up')),
          //     ),
          //   ]),
          // ),
        ],
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}

class _FormContentExistingUser extends ConsumerStatefulWidget {
  const _FormContentExistingUser();

  @override
  ConsumerState<_FormContentExistingUser> createState() =>
      _FormContentExistingUserState();
}

class _FormContentExistingUserState
    extends ConsumerState<_FormContentExistingUser> {
  bool _isPasswordVisible = false;
  bool _isHoveredFP = false;
  bool _isHoveredSU = false;
  final NetworkManager _networkManager = NetworkManager();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _dialogCommon = DialogCommon();
  final _dialogUncommon = DialogUncommon();

  Future<void> _checkConnection() async {
    await _networkManager.checkInternetAvailability();
  }

  Future<void> _connectionCheckStatus() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    setState(() {
      _networkManager.connectionStatus;
    });
  }

  final _focusNodeInE = FocusNode();

  final LocalAuthentication _auth = LocalAuthentication();
  bool _canCheckBiometrics = false;
  List<BiometricType> _availableBiometrics = [];

  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await _auth.canCheckBiometrics;
    } catch (e) {
      canCheckBiometrics = false;
      // developer.log('An error occurred while checking biometrics: ', error: e);
    }
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await _auth.getAvailableBiometrics();
    } catch (e) {
      availableBiometrics = [];
      // developer.log('An error occurred while getting available biometrics: ',
      //     error: e);
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<void> _authBiometrics() async {
    if (!_canCheckBiometrics || _availableBiometrics.isEmpty) {
      _showNoBiometricsDialog(context);
      return;
    }

    bool authenticated = false;

    if (!mounted) {
      return;
    }

    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;

    try {
      authenticated = await _auth.authenticate(
        localizedReason: 'Authenticate to sign in',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
          useErrorDialogs: true,
          sensitiveTransaction: true,
        ),
      );
    } on PlatformException catch (e) {
      // developer.log('An error occurred: ', error: e);
      if (e.code == 'NotAvailable' || e.code == 'NotEnrolled') {
        // Handle case where biometrics are not available or not enrolled
        // developer.log("Biometrics not available or not enrolled");

        if (!mounted) return;
        _dialogCommon.showDialogMessage(
            context,
            'Error',
            'Biometrics not available or not enrolled. Use log-in credentials instead.',
            'OK');
        return;
      } else if (e.code == 'LockedOut') {
        // This might indicate too many failed attempts
        // developer.log(
        //     "Too many failed attempts. Biometrics are temporarily locked.");

        if (!mounted) return;
        _dialogCommon.showDialogMessage(
            context,
            'Error',
            'Too many failed attempts. Biometrics are temporarily locked. Use log-in credentials instead.',
            'OK');
        return;
        // Implement a fallback or prompt user to try later
      } else if (e.code == 'PermanentlyLockedOut') {
        // Biometric is permanently locked, probably due to too many failed attempts
        //developer.log("Biometrics are permanently locked.");

        if (!mounted) return;
        _dialogCommon.showDialogMessage(
            context,
            'Error',
            'Biometrics are permanently locked. Use log-in credentials instead.',
            'OK');
        return;
        // Provide an alternative method for authentication
      } else {
        // Handle other exceptions
        // developer.log("Unhandled error: ${e.message}");

        if (!mounted) return;
        _dialogCommon.showDialogMessage(context, 'Error',
            'Temporary unavailable. Use log-in credentials instead.', 'OK');
        return;
      }
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    if (authenticated) {
      // User authenticated successfully
      // Navigator.of(context).pushReplacementNamed('/dashboard');
      // Navigator.pushReplacementNamed(context, '/dashboard');
      // kIsWeb
      //     ? GoRouter.of(context).pushReplacement(
      //         Uri(path: '/dashboard').toString()) //context.go('/dashboard') // you can remove URI here, except the path argument
      //     : GoRouter.of(context).pushReplacement(
      //         Uri(path: '/dashboard').toString()); //'/dashboard'); // you can remove URI here, except the path argument
      (isExtraSmallScreen || isSmallScreen || isMediumScreen)
          ? context.go('/home-b')
          : context.go('/home-b');
    } else {
      // User did not authenticate
      developer.log('An error occurred: ', error: 'not authenticated');
    }
  }

  void _showNoBiometricsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: RetainTextScaleWrapper(
            child: Text(
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
                'No Biometrics Available'),
          ), // More descriptive title
          content: RetainTextScaleWrapper(
            child: const Text(
              'Your device does not have or does not support fingerprint or Face ID. You can set these up in your device settings for secure authentication.',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: RetainTextScaleWrapper(child: const Text('OK')),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 250)).then((_) {
      _focusNodeInE.requestFocus();
    }); //this is useful to avoid having lag/buffer delay
    _checkConnection();
    _networkManager.regStreamSubscription();
    _connectionCheckStatus();
    _checkBiometrics();
    _getAvailableBiometrics();
  }

  @override
  void dispose() {
    // Dispose of the FocusNodes when the form is disposed
    _focusNodeInE.unfocus();
    _focusNodeInE.dispose();
    _networkManager.disposeStreamSubscription();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Future<void> getDeviceInfo() async {
  //   DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //   AndroidDeviceInfo? androidInfo;
  //   IosDeviceInfo? iosInfo;
  //   WebBrowserInfo? webBrowserInfo;

  //   try {
  //     final deviceInfoPlugin = DeviceInfoPlugin();
  //     final deviceInfo = await deviceInfoPlugin.deviceInfo;
  //     final allInfo = deviceInfo.data;
  //     developer.log('Device data: $allInfo');
  //   } catch (e) {
  //     // Handle error, if any
  //     developer.log('Error fetching device data: $e');
  //   }

  //   try {
  //     androidInfo = await deviceInfo.androidInfo;
  //   } catch (e) {
  //     // Handle error, if any
  //     developer.log('Error fetching android info: $e');
  //   }
  //   if (androidInfo != null) {
  //     developer.log('Running on ${androidInfo.model}'); // e.g. "Moto G (4)"
  //   }

  //   try {
  //     iosInfo = await deviceInfo.iosInfo;
  //   } catch (e) {
  //     // Handle error, if any
  //     developer.log('Error fetching ios info: $e');
  //   }
  //   if (iosInfo != null) {
  //     developer.log(
  //         'Running on ${iosInfo.utsname.machine.toString()}'); // e.g. "iPod7,1"
  //   }

  //   try {
  //     webBrowserInfo = await deviceInfo.webBrowserInfo;
  //   } catch (e) {
  //     // Handle error, if any
  //     developer.log('Error fetching web browser info: $e');
  //   }
  //   if (webBrowserInfo != null) {
  //     developer.log(
  //         'Running on ${webBrowserInfo.userAgent}'); // e.g. "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0"
  //   }
  // }

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
    final customTheme = Theme.of(context).extension<CustomTheme>();
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    // final dataModel = Provider.of<DataModel>(context);

    // dataModel.removeSharedPref();

    // final auth = kIsWeb ? null : Provider.of<AuthProvider>(context);
    //getDeviceInfo(); //To speed up development, I comment out this for now

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
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: RetainTextScaleWrapper(
                child: TextFormField(
                  key: const ValueKey('email'),
                  focusNode: _focusNodeInE,
                  textInputAction: TextInputAction.next,
                  controller: _usernameController,
                  validator: (value) {
                    // add email validation
                    if (value == null || value.isEmpty) {
                      return 'Required';
                    }

                    // bool emailValid =
                    //     RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    //             .hasMatch(value) ||
                    //         value == 'ad';
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
                    prefixIcon: Icon(CupertinoIcons.device_phone_portrait),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            _gap(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: RetainTextScaleWrapper(
                child: TextFormField(
                  key: const ValueKey('pass'),
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) async {
                    if (_formKey.currentState?.validate() ?? false) {
                      /// do something
                      if (_networkManager.connectionStatus
                          .contains(ConnectivityResult.none)) {
                        isSmallScreen
                            ? _networkManager
                                .showInternetScaffoldMessenger(context)
                            : _networkManager.showNoInternetDialog(context);
                      } else {
                        developer.log('Under development...');
                      }
                    }
                  },
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Required';
                    }

                    // if (value.length < 6 && value != 'ad') {
                    //   return 'Password must be at least 6 characters';
                    // }
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
                      prefixIcon: Icon(Icons.key_rounded),
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
                      'Sign In',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    /// do something
                    if (_networkManager.connectionStatus
                        .contains(ConnectivityResult.none)) {
                      isSmallScreen
                          ? _networkManager
                              .showInternetScaffoldMessenger(context)
                          : _networkManager.showNoInternetDialog(context);
                    } else {
                      developer.log('Under development...');
                    }
                  }
                },
              ),
            ),
            Visibility(visible: _availableBiometrics.isNotEmpty, child: _gap()),
            Visibility(
              visible: _availableBiometrics.isNotEmpty,
              child: Row(
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
            ),
            Visibility(visible: _availableBiometrics.isNotEmpty, child: _gap()),
            Visibility(
              visible: _availableBiometrics.isNotEmpty,
              child: TextButton(
                onHover: (isHovered) =>
                    setState(() => _isHoveredFP = isHovered),
                onPressed: () {
                  if (_networkManager.connectionStatus
                      .contains(ConnectivityResult.none)) {
                    isSmallScreen
                        ? _networkManager.showInternetScaffoldMessenger(context)
                        : _networkManager.showNoInternetDialog(context);
                  } else {
                    _authBiometrics();
                  }
                },
                style: TextButton.styleFrom(
                  textStyle: TextStyle(
                    decoration: _isHoveredFP
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
                    child: const Text('Sign In Using Biometrics')),
              ),
            ),
            _gap(),
            TextButton(
              onHover: (isHovered) => setState(() => _isHoveredFP = isHovered),
              onPressed: () async {
                //do something
                // if (_isChecking) {
                //   const CircularProgressIndicator();
                // } else {
                if (_networkManager.connectionStatus
                    .contains(ConnectivityResult.none)) {
                  isSmallScreen
                      ? _networkManager.showInternetScaffoldMessenger(context)
                      : _networkManager.showNoInternetDialog(context);
                } else {
                  // isSmallScreen
                  //     // ? ScaffoldMessenger.of(context).showSnackBar(
                  //     //     SnackBar(
                  //     //       content: Text('Under development...',
                  //     //           style: Theme.of(context)
                  //     //               .textTheme
                  //     //               .headlineSmall
                  //     //               ?.copyWith(fontWeight: FontWeight.bold)),
                  //     //     ),
                  //     //   )
                  //     ? dialogCommon.showDialogSnackbar(
                  //         context, 'Under development...')
                  //     // : showDialog(
                  //     //     context: context,
                  //     //     builder: (context) => AlertDialog(
                  //     //       title: const Text(
                  //     //         'DevQt Note',
                  //     //         style: TextStyle(
                  //     //             fontSize: 16, fontWeight: FontWeight.bold,
                  //     //             letterSpacing: 0.75,),
                  //     //       ),
                  //     //       content: const Text('Under development...'),
                  //     //       actions: [
                  //     //         TextButton(
                  //     //           onPressed: () => Navigator.of(context).pop(),
                  //     //           child: const Text('OK'),
                  //     //         ),
                  //     //       ],
                  //     //     ),
                  //     //   );
                  //     : dialogCommon.showDialogMessage(
                  //         context,
                  //         'DevQt Note',
                  //         'Under Development...',
                  //         'OK',
                  //       );
                  // }

                  // kIsWeb
                  //     ? context.go('///recover-account')
                  //     : GoRouter.of(context)
                  //         .push(Uri(path: '/recover-account').toString()); // you can remove URI here, except the path argument
                  GoRouter.of(context).push('/recover-account');
                }
              },
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  decoration: _isHoveredFP
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.75,
                ),
                foregroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
              child:
                  RetainTextScaleWrapper(child: const Text('Forgot Password?')),
            ),
            _gap(),
            Opacity(opacity: 0.1, child: const Divider()),
            // _gap(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                RetainTextScaleWrapper(
                  child: Text("Haven't signed up yet?",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                TextButton(
                  onHover: (isHovered) =>
                      setState(() => _isHoveredSU = isHovered),
                  onPressed: () {
                    //do something
                    if (_networkManager.connectionStatus
                        .contains(ConnectivityResult.none)) {
                      isSmallScreen
                          ? _networkManager
                              .showInternetScaffoldMessenger(context)
                          : _networkManager.showNoInternetDialog(context);
                    } else {
                      // Navigator.push(
                      //   context,
                      //   RouteTransitions.slideTransition(const SignUp()),
                      // );
                      // Navigator.pushNamed(context, '/sign-up');
                      ref.read(regStateNotifierProvider.notifier).switchState();
                      _dialogUncommon.showAutoDismissDialog(
                          context,
                          'Uh oh... not available at this time ;)',
                          CupertinoIcons.exclamationmark_circle_fill,
                          Colors.redAccent);
                    }
                  },
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      decoration: _isHoveredSU
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.75,
                    ),
                    foregroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: RetainTextScaleWrapper(child: const Text('Sign Up')),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
