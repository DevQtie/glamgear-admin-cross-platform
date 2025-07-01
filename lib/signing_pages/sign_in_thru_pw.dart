import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/global_hlpr_n_wdgt/device_id_helper.dart';
import 'package:glamgear/global_hlpr_n_wdgt/ovrly_lder_w_app_ic.dart';
import 'package:glamgear/internal/data_model/local_storage/shared_pref.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:glamgear/comm/net_access.dart';
import 'package:glamgear/dart_logo/raquel_logo.dart';
import 'dart:developer' as developer;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:http/http.dart' as http;
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:glamgear/main.dart';

class SignInThruPassword extends ConsumerStatefulWidget {
  const SignInThruPassword({super.key});

  @override
  ConsumerState<SignInThruPassword> createState() => _SignInThruPasswordState();
}

class _SignInThruPasswordState extends ConsumerState<SignInThruPassword> {
  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    // final Brightness brightness = MediaQuery.of(context).platformBrightness;
    // final bool isDarkMode = brightness == Brightness.dark;
    // final customTheme = Theme.of(context).extension<CustomTheme>();

    final isButtonEnabled = ref.watch(checkButtonStateProvider);

    return PopScope<Object?>(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (didPop) {
          return;
        }
        context.go('/glamgear');
      },
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: colorScheme.surfaceContainerHighest,
            title: Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                IconButton(
                  icon: Icon(CupertinoIcons.chevron_left),
                  onPressed: () {
                    if (GoRouter.of(context).canPop()) {
                      GoRouter.of(context).pop();
                    }
                  },
                ),
                RetainTextScaleWrapper(
                  child: Text(
                    'Sign In',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Container(
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
                                  constraints:
                                      const BoxConstraints(maxWidth: 800),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Expanded(child: _Logo()),
                                      Expanded(
                                        child: isSmallScreen
                                            ? const Center(
                                                child: _FormContent())
                                            : const Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: _FormContent(),
                                              ),
                                      ),
                                    ],
                                  ),
                                )),
                    ),
                  ),
                ),
              ),
              Center(
                child:
                    OverlayLoaderWithAppIconHelper(isLoading: !isButtonEnabled),
              )
            ],
          )),
    );
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
              : CrossAxisAlignment.center,
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
                  "Welcome to\nGlamGear!",
                  textAlign:
                      isSmallScreen ? TextAlign.center : TextAlign.center,
                  style: isSmallScreen
                      ? Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontFamily: 'noto-sans')
                      : Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(fontFamily: 'noto-sans'),
                  semanticsLabel: "Welcome to Raquel Showroom!",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10), //16.0
              child: RetainTextScaleWrapper(
                child: Text(
                  "Use GlamGear ID and your password\nto sign in",
                  textAlign:
                      isSmallScreen ? TextAlign.center : TextAlign.center,
                  style: isSmallScreen
                      ? Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'noto-sans')
                      : Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'noto-sans'),
                  semanticsLabel:
                      "Use GlamGear ID and your password to sign in",
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
  bool _isPasswordVisible = false;
  bool _isHoveredRA = false;
  bool _isHoveredSU = false;
  final NetworkManager _networkManager = NetworkManager();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _dialogCommon = DialogCommon();
  final _dialogUncommon = DialogUncommon();
  final _deviceIdHelper = DeviceIdHelper();
  String? _deviceId;
  String? _devicePlatform;
  bool? _isPhysicalDevice;
  String? _deviceModel;
  String? _deviceVersion;

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

  Future<void> _getDeviceProperties() async {
    bool? isPhysicalDevice = await _deviceIdHelper.isPhysicalDevice();
    String? deviceModel = await _deviceIdHelper.deviceModel();
    String? deviceVersion = await _deviceIdHelper.deviceVersion();
    if (mounted) {
      setState(() {
        _devicePlatform = _deviceIdHelper.devicePlatform();
        _isPhysicalDevice = isPhysicalDevice;
        _deviceModel = deviceModel;
        _deviceVersion = deviceVersion;
      });
      developer.log(
          'Platform: $_devicePlatform, isPhysicalDevice: $_isPhysicalDevice, Model: $_deviceModel, Version: $_deviceVersion');
    }
  }

  Future<void> _signIn(
      DataModel sharedPrefs, String username, String password) async {
    await ref
        .read(signInUsingUNPasswordProvider.notifier)
        .signInUsingUNPassword(
          username: username,
          password: password,
        );

    final result = ref.read(signInUsingUNPasswordProvider);

    if (result is AsyncData && result.value?.adminID != null && mounted) {
      await ref.read(logAdminWebAccessProvider.notifier).manageAdminWebAccess(
            adminID: result.value?.adminID,
            username: result.value?.username,
            fullName: result.value?.fullName,
            compEmail: result.value?.compEmail,
            adminRole: result.value?.adminRole,
            loginStatus: 'SUCCESSFUL',
          );

      final result2 = ref.read(logAdminWebAccessProvider);
      developer.log(name: 'STATUS', result2.valueOrNull.toString());

      if (result2 is AsyncData && result2.value != 'SUCCESSFUL' && mounted) {
        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true
        _dialogUncommon.showAutoDismissDialogLonger(
          context,
          'Something went wrong. Please try again later.',
          null,
          null,
        );
      } else {
        await _processDevicePropertiesSignIn(
            sharedPrefs: sharedPrefs,
            username: result.value!.adminID.toString(),
            fullName: result.value!.fullName.toString(),
            adminRole: result.value!.adminRole.toString());
      }
    } else {
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      if (mounted) {
        _dialogUncommon.showAutoDismissDialogLonger(
          context,
          'User credential cannot be found!',
          null,
          null,
        );
      }
    }
  }

  Future<void> _processDevicePropertiesSignIn(
      // not applicable for admin side in the meantime
      {DataModel? sharedPrefs,
      String? username,
      String? fullName,
      String? adminRole}) async {
    await ref
        .read(manageDevicePropertiesProvider.notifier)
        .proccessDeviceProperties(
          adminID: username,
          devicePlatform: _devicePlatform,
          deviceState: _isPhysicalDevice,
          deviceModel: _deviceModel,
          deviceVersion: _deviceVersion,
          functionKey: 'SIGN-IN',
        );

    final result = ref.read(manageDevicePropertiesProvider);

    if (result is AsyncData && result.value != 'SUCCESSFUL' && mounted) {
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      _dialogCommon.showDialogMessageCustomizableButton(
        context,
        'Error',
        'Cannot process your request. Please try again later.',
        TextButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          child: RetainTextScaleWrapper(child: Text('OK')),
        ),
      );
    } else {
      if (mounted) {
        _dialogUncommon.showAutoDismissDialog(context, 'Login successfully!',
            CupertinoIcons.check_mark_circled, Colors.greenAccent);
      }

      // CookieManager.addToCookie(
      //     'admin_id', username); // discontinued in the meantime
      // CookieManager.addToCookie(
      //     'full_name', fullName); // discontinued in the meantime
      // CookieManager.addToCookie(
      //     'admin_role', adminRole); // discontinued in the meantime
      sharedPrefs!.saveAdminID(username!);
      sharedPrefs.saveFullname(fullName!);
      sharedPrefs.saveAdminRole(adminRole!);
      // _retrieveAdminData();

      ref
          .read(dashboardBottomAppBarIndexProvider.notifier)
          .setIndex(); // to initialize the bottomNavigationBar index
      Future.delayed(const Duration(milliseconds: 1000), () {
        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true
        if (mounted) {
          context.go('/home-b');
        }
      });
    }
  }

  // Future<void> _retrieveAdminData() async {
  //   // for testing purposes, should not be used in prod
  //   final futurePrefs = await ref.read(sharedPrefFutureProvider.future);
  //   final sharedPrefAdminID = await futurePrefs.getAdminID();
  //   final sharedPrefFullname = await futurePrefs.getFullname();
  //   final sharedPrefAdminRole = await futurePrefs.getAdminRole();

  //   if (sharedPrefAdminID == null && mounted) {
  //     context.go('/glamgear');
  //   }

  //   ref.read(adminIDProvider.notifier).setAdminID(data: sharedPrefAdminID);
  //   ref.read(fullnameProvider.notifier).setFullname(data: sharedPrefFullname);
  //   ref
  //       .read(adminRoleProvider.notifier)
  //       .setAdminRole(data: sharedPrefAdminRole);
  // }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 250)).then((_) {
      _focusNodeInE.requestFocus();
    }); //this is useful to avoid having lag/buffer delay
    _checkConnection();
    _networkManager.regStreamSubscription();
    _connectionCheckStatus();
    _getDeviceProperties();
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
    final theme = Theme.of(context);
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

    final sharedPrefs = ref.watch(sharedPrefProvider);
    final isButtonEnabled = ref.watch(checkButtonStateProvider);

    final fullname = ref.watch(
        fullnameProvider); // for testing purposes, and shoud not be used in prod

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
                      ref
                          .read(checkButtonStateProvider.notifier)
                          .isButtonEnabled(); // The method was set to default to true
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
                    hintText: 'GlamGear ID',
                    prefixIcon: Icon(CupertinoIcons.person),
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
                        if (!isButtonEnabled) {
                          return;
                        }
                        ref
                            .read(checkButtonStateProvider.notifier)
                            .isButtonEnabled(isEnabled: false);
                        await _signIn(
                          sharedPrefs,
                          _usernameController.text,
                          _passwordController.text,
                        );
                      }
                    }
                  },
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      ref
                          .read(checkButtonStateProvider.notifier)
                          .isButtonEnabled(); // The method was set to default to true
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
                      if (!isButtonEnabled) {
                        return;
                      }
                      ref
                          .read(checkButtonStateProvider.notifier)
                          .isButtonEnabled(isEnabled: false);
                      await _signIn(
                        sharedPrefs,
                        _usernameController.text,
                        _passwordController.text,
                      );
                    }
                  }
                },
              ),
            ),
            _gap(),
            TextButton(
              onHover: (isHovered) => setState(() => _isHoveredRA = isHovered),
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
                      decoration: _isHoveredRA
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
                  RetainTextScaleWrapper(child: const Text('Recover Account?')),
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
            //               ? _networkManager
            //                   .showInternetScaffoldMessenger(context)
            //               : _networkManager.showNoInternetDialog(context);
            //         } else {
            //           // Navigator.push(
            //           //   context,
            //           //   RouteTransitions.slideTransition(const SignUp()),
            //           // );
            //           // Navigator.pushNamed(context, '/sign-up');
            //           ref.read(regStateNotifierProvider.notifier).switchState();
            //           kIsWeb
            //               ? context.go('///terms-of-service')

            //               // _dialogUncommon.showAutoDismissDialog(
            //               //     context,
            //               //     'Uh oh... not available at this time ;)',
            //               //     CupertinoIcons.exclamationmark_circle_fill,
            //               //     Colors.redAccent) // let web to register
            //               : GoRouter.of(context)
            //                   .push('/terms-of-service'); //'/sign-up');
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
            //       child: RetainTextScaleWrapper(child: const Text('Sign Up')),
            //     ),
            //   ]),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}

class GlobalData {
  // subject for removal
  static final GlobalData _instance = GlobalData._internal();
  factory GlobalData() => _instance;
  GlobalData._internal();

  String data = '';
}

class CenteredSnackbar extends StatefulWidget {
  final BuildContext context;
  final String text;
  final VoidCallback? onPressed;
  final double duration;

  const CenteredSnackbar({
    super.key,
    required this.context,
    required this.text,
    this.onPressed,
    this.duration = 10.0, // Default duration in seconds
  });

  @override
  State<CenteredSnackbar> createState() => _CenteredSnackbarState();
}

class _CenteredSnackbarState extends State<CenteredSnackbar> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: widget.duration.toInt()), () {
      if (mounted) {
        Navigator.of(context).pop(); // Auto-dismiss after duration
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // Transparent background for a Snackbar-like feel
      color: Colors.transparent,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.grey.shade800,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min, // Center the content
            children: [
              RetainTextScaleWrapper(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.grey.shade100,
                    letterSpacing: 0.75,
                  ),
                ),
              ),
              if (widget.onPressed != null) ...[
                const SizedBox(width: 10.0),
                TextButton(
                  onPressed: widget.onPressed,
                  child: RetainTextScaleWrapper(
                    child: const Text(
                      'Dismiss',
                      style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 0.75,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
