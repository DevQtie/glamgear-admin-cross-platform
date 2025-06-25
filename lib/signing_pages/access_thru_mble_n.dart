import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/api_main/api_helper_dio.dart';
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/global_hlpr_n_wdgt/device_id_helper.dart';
import 'package:glamgear/global_hlpr_n_wdgt/random_digit_code.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:glamgear/internal/data_model/local_storage/shared_pref.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:glamgear/comm/net_access.dart';
import 'package:glamgear/dart_logo/raquel_logo.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/main.dart';
import 'dart:developer' as developer;

import 'package:loading_animation_widget/loading_animation_widget.dart';

class AccessThruMobileNumber extends StatefulWidget {
  final String functionKey;
  final bool isRegistration;
  const AccessThruMobileNumber(
      {super.key, required this.functionKey, required this.isRegistration});

  @override
  State<AccessThruMobileNumber> createState() => _AccessThruMobileNumberState();
}

class _AccessThruMobileNumberState extends State<AccessThruMobileNumber> {
  FocusNode? _focusNodeMn;

  @override
  void initState() {
    super.initState();
    _focusNodeMn = FocusNode();
    Future.delayed(const Duration(milliseconds: 250)).then((_) {
      _focusNodeMn!.requestFocus();
    }); //this is useful to avoid having lag/buffer delay
  }

  @override
  void dispose() {
    _focusNodeMn!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    // final Brightness brightness = MediaQuery.of(context).platformBrightness;
    // final bool isDarkMode = brightness == Brightness.dark;
    // final customTheme = Theme.of(context).extension<CustomTheme>();

    return KeyboardVisibilityBuilder(builder: (context, visible) {
      return PopScope<Object?>(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, Object? result) {
          if (didPop) {
            return;
          }
          if (visible) {
            _focusNodeMn!.unfocus();
          } else {
            developer.log('Status: ${widget.isRegistration}');
            if (widget.isRegistration) {
              kIsWeb
                  ? context.go('/sign-up-opt')
                  : GoRouter.of(context).push('/sign-up-opt');
            } else {
              if (GoRouter.of(context).canPop()) {
                GoRouter.of(context).pop();
              } else {
                context.go('/');
              }
            }
          }
        },
        child: Scaffold(
            // appBar: AppBar(
            //   backgroundColor: colorScheme.surfaceContainerHighest,
            //   leading: IconButton(
            //     onPressed: () {
            //       if (widget.isRegistration) {
            //         kIsWeb
            //             ? context.go('/sign-up-opt')
            //             : GoRouter.of(context).push('/sign-up-opt');
            //       } else {
            //         if (GoRouter.of(context).canPop()) {
            //           GoRouter.of(context).pop();
            //         } else {
            //           context.go('/');
            //         }
            //       }
            //     },
            //     icon: Icon(CupertinoIcons.chevron_left),
            //   ),
            // ),
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
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _Logo(),
                                  SizedBox(height: 10),
                                  _FormContent(widget.functionKey,
                                      widget.isRegistration, _focusNodeMn),
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
                                          ? Center(
                                              child: _FormContent(
                                                  widget.functionKey,
                                                  widget.isRegistration,
                                                  _focusNodeMn))
                                          : Align(
                                              alignment: Alignment.centerRight,
                                              child: _FormContent(
                                                  widget.functionKey,
                                                  widget.isRegistration,
                                                  _focusNodeMn),
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
                  "Welcome to\nGlamGear!",
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
                  semanticsLabel: "Welcome to Raquel Showroom!",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10), //16.0
              child: RetainTextScaleWrapper(
                child: Text(
                  "We'll send a code to your mobile number",
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
  final String functionKey;
  final bool isRegistration;
  final FocusNode? focusNodeMn;
  const _FormContent(this.functionKey, this.isRegistration, this.focusNodeMn);

  @override
  ConsumerState<_FormContent> createState() => _FormContentState();
}

class _FormContentState extends ConsumerState<_FormContent> {
  bool _isHoveredRA = false;
  bool _isHoveredSU = false;
  final NetworkManager _networkManager = NetworkManager();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _mobileNoController = TextEditingController();
  // final _dialogCommon = DialogCommon();
  final _dialogUncommon = DialogUncommon();
  final _countryCode = '+63';
  // final ApiHelper _apiHelper = ApiHelper();
  final _fourRandomDigitCode = RandomDigitCode();
  String? _code;
  final _deviceIdHelper = DeviceIdHelper();
  String? _deviceId;
  String? _devicePlatform;
  bool? _isPhysicalDevice;
  String? _deviceModel;
  String? _deviceVersion;

  final _dioHelper = ApiHelperDio();

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

  Future<void> _processDeviceID() async {
    String? retrieveDeviceID = await _deviceIdHelper.getDeviceId();
    setState(() {
      _deviceId = retrieveDeviceID;
    });
  }

  Future<void> _processCodeRequestSignIn(String mobileNo) async {
    try {
      ref.invalidate(accessCodeRequestProvider);
      await ref.read(accessCodeRequestProvider.notifier).initCodeRequest(
          '/api/postget/code/process_req',
          null,
          mobileNo,
          _deviceId,
          _code,
          'PROCESS_REQUEST');

      // If the request was successful, navigate
      final result = ref.read(accessCodeRequestProvider);
      if (result is AsyncData && result.value == "SUCCESSFUL" && mounted) {
        // I forgot to consider if the user was unregistered
        // developer.log('Observe Async Process: ${result.value}');

        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true

        CookieManager.addToCookie('functionKey', widget.functionKey);
        CookieManager.addToCookie('deviceID', _deviceId);
        CookieManager.addToCookie('mobileNo', mobileNo);
        CookieManager.addToCookie('isRegistration', widget.isRegistration);

        kIsWeb
            ? context.go('///access-thru-mobile-no/otp-verifier', extra: {
                'functionKey': widget.functionKey,
                'deviceID': _deviceId,
                'mobileNo': mobileNo,
                'isRegistration': widget.isRegistration
              }) //context.go('/product-view')
            : GoRouter.of(context).push('/otp-verifier', extra: {
                'functionKey': widget.functionKey,
                'deviceID': _deviceId,
                'mobileNo': mobileNo,
                'isRegistration': widget.isRegistration
              });
      } else if (result.value != null &&
          result.value!.contains("EXCEEDED") &&
          mounted) {
        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true
        _dialogUncommon.showAutoDismissDialogLonger(context, result.value!,
            CupertinoIcons.exclamationmark_circle_fill, Colors.redAccent);
      } else {
        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true
        if (mounted) {
          _dialogUncommon.showAutoDismissDialogLonger(
              context,
              'Oops, something unexpected happened.',
              CupertinoIcons.exclamationmark_circle_fill,
              Colors.redAccent);
        }
      }
    } catch (error) {
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      if (mounted) {
        _dialogUncommon.showAutoDismissDialogLonger(
            context,
            'Oops, something unexpected happened.',
            CupertinoIcons.exclamationmark_circle_fill,
            Colors.redAccent);
      }
    }
  }

  Future<void> _processCodeRequestSignUp(String mobileNo) async {
    try {
      ref.invalidate(accessCodeRequestProvider);
      await ref.read(accessCodeRequestProvider.notifier).initCodeRequest(
          '/api/postget/code/process_req',
          null,
          mobileNo,
          _deviceId,
          _code,
          'PROCESS_SIGN_UP');

      // If the request was successful, navigate
      final result = ref.read(accessCodeRequestProvider);
      if (result is AsyncData && result.value == "SUCCESSFUL" && mounted) {
        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true
        // developer.log('Observe Async Process: ${result.value}');

        CookieManager.addToCookie('functionKey', widget.functionKey);
        CookieManager.addToCookie('deviceID', _deviceId);
        CookieManager.addToCookie('mobileNo', mobileNo);
        CookieManager.addToCookie('isRegistration', widget.isRegistration);

        kIsWeb
            ? context.go('///access-thru-mobile-no/otp-verifier', extra: {
                'functionKey': widget.functionKey,
                'deviceID': _deviceId,
                'mobileNo': mobileNo,
                'isRegistration': widget.isRegistration,
              }) //context.go('/product-view')
            : GoRouter.of(context).push('/otp-verifier', extra: {
                'functionKey': widget.functionKey,
                'deviceID': _deviceId,
                'mobileNo': mobileNo,
                'isRegistration': widget.isRegistration,
              });
      } else if (result.value != null &&
          result.value!.contains("EXCEEDED") &&
          mounted) {
        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true
        _dialogUncommon.showAutoDismissDialogLonger(context, result.value!,
            CupertinoIcons.exclamationmark_circle_fill, Colors.redAccent);
      } else {
        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true
        if (mounted) {
          _dialogUncommon.showAutoDismissDialogLonger(
              context,
              'Oops, something unexpected happened.',
              CupertinoIcons.exclamationmark_circle_fill,
              Colors.redAccent);
        }
      }
    } catch (error) {
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      if (mounted) {
        _dialogUncommon.showAutoDismissDialogLonger(
            context,
            'Oops, something unexpected happened.',
            CupertinoIcons.exclamationmark_circle_fill,
            Colors.redAccent);
      }
    }
  }

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

  @override
  void initState() {
    super.initState();
    _checkConnection();
    _networkManager.regStreamSubscription();
    _connectionCheckStatus();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _processDeviceID();
      _getDeviceProperties();
      ref.invalidate(accessCodeRequestProvider);
    });
  }

  @override
  void dispose() {
    // Dispose of the FocusNodes when the form is disposed
    _networkManager.disposeStreamSubscription();
    _mobileNoController.dispose();
    super.dispose();
  }

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

    final isButtonEnabled = ref.watch(checkButtonStateProvider);

    final requestState = ref.watch(accessCodeRequestProvider);

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
                  key: const ValueKey('mobile_no'),
                  focusNode: widget.focusNodeMn,
                  textInputAction: TextInputAction.next,
                  controller: _mobileNoController,
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  readOnly: !isButtonEnabled,
                  validator: (value) {
                    // add email validation
                    if (value == null || value.isEmpty) {
                      ref
                          .read(checkButtonStateProvider.notifier)
                          .isButtonEnabled(); // The method was set to default to true
                      return 'Required';
                    }

                    if (value.length < 10) {
                      ref
                          .read(checkButtonStateProvider.notifier)
                          .isButtonEnabled(); // The method was set to default to true
                      return 'Invalid mobile no.';
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
                  onFieldSubmitted: (value) async {
                    if (!isButtonEnabled) {
                      return;
                    }
                    ref
                        .read(checkButtonStateProvider.notifier)
                        .isButtonEnabled(isEnabled: false);
                    if (_formKey.currentState?.validate() ?? false) {
                      /// do something
                      if (_networkManager.connectionStatus
                          .contains(ConnectivityResult.none)) {
                        isSmallScreen
                            ? _networkManager
                                .showInternetScaffoldMessenger(context)
                            : _networkManager.showNoInternetDialog(context);
                      } else {
                        setState(() {
                          _code =
                              _fourRandomDigitCode.generateSixRandomDigitCode();
                        });

                        String mobileNoStringInterpolation =
                            '$_countryCode$value';
                        widget.isRegistration
                            ? await _processCodeRequestSignUp(
                                mobileNoStringInterpolation)
                            : await _processCodeRequestSignIn(
                                mobileNoStringInterpolation);
                      }
                    }
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
                    hintText: 'Enter your mobile number',
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
                                        ? const Color.fromARGB(
                                            100, 255, 255, 255)
                                        : Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    border: const OutlineInputBorder(),
                  ),
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
                onPressed: () async {
                  if (!isButtonEnabled) {
                    return;
                  }
                  ref
                      .read(checkButtonStateProvider.notifier)
                      .isButtonEnabled(isEnabled: false);
                  developer.log('Button is clicked!');
                  if (_formKey.currentState?.validate() ?? false) {
                    /// do something
                    if (_networkManager.connectionStatus
                        .contains(ConnectivityResult.none)) {
                      isSmallScreen
                          ? _networkManager
                              .showInternetScaffoldMessenger(context)
                          : _networkManager.showNoInternetDialog(context);
                    } else {
                      setState(() {
                        _code =
                            _fourRandomDigitCode.generateSixRandomDigitCode();
                      });

                      String mobileNoStringInterpolation =
                          '$_countryCode${_mobileNoController.text}';
                      widget.isRegistration
                          ? await _processCodeRequestSignUp(
                              mobileNoStringInterpolation)
                          : await _processCodeRequestSignIn(
                              mobileNoStringInterpolation);
                    }
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RetainTextScaleWrapper(
                    child: requestState.when(
                      loading: () => Center(
                        child: LoadingAnimationWidget.stretchedDots(
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      error: (erro, stack) => Text(
                        'Send code',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      data: (data) {
                        return Text(
                          'Send code',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        );
                      },
                    ),
                  ),
                ),
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
                  context.go('///recover-account');
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
            // Visibility( // To create an account
            //     visible: !widget.isRegistration,
            //     child: Opacity(opacity: 0.1, child: const Divider())),
            // // _gap(),
            // Visibility(
            //   visible: !widget.isRegistration,
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
            //       RetainTextScaleWrapper(
            //         child: Text(
            //           "Haven't signed up yet?",
            //           style: Theme.of(context).textTheme.bodySmall?.copyWith(
            //                 fontFamily: 'lato',
            //                 fontWeight: FontWeight.bold,
            //                 letterSpacing: 0.75,
            //               ),
            //         ),
            //       ),
            //       TextButton(
            //         onHover: (isHovered) =>
            //             setState(() => _isHoveredSU = isHovered),
            //         onPressed: () {
            //           //do something
            //           if (_networkManager.connectionStatus
            //               .contains(ConnectivityResult.none)) {
            //             isSmallScreen
            //                 ? _networkManager
            //                     .showInternetScaffoldMessenger(context)
            //                 : _networkManager.showNoInternetDialog(context);
            //           } else {
            //             // Navigator.push(
            //             //   context,
            //             //   RouteTransitions.slideTransition(const SignUp()),
            //             // );
            //             // Navigator.pushNamed(context, '/sign-up');
            //             ref
            //                 .read(regStateNotifierProvider.notifier)
            //                 .switchState();
            //             kIsWeb
            //                 ? context.go('///terms-of-service')

            //                 // _dialogUncommon.showAutoDismissDialog(
            //                 //     context,
            //                 //     'Uh oh... not available at this time ;)',
            //                 //     CupertinoIcons.exclamationmark_circle_fill,
            //                 //     Colors.redAccent)
            //                 : GoRouter.of(context)
            //                     .push('/terms-of-service'); //'/sign-up');
            //           }
            //         },
            //         style: TextButton.styleFrom(
            //           textStyle:
            //               Theme.of(context).textTheme.bodySmall?.copyWith(
            //                     fontFamily: 'lato',
            //                     decoration: _isHoveredSU
            //                         ? TextDecoration.underline
            //                         : TextDecoration.none,
            //                     fontWeight: FontWeight.bold,
            //                     letterSpacing: 0.75,
            //                   ),
            //           foregroundColor: Colors.blueAccent,
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(4)),
            //         ),
            //         child: RetainTextScaleWrapper(child: const Text('Sign Up')),
            //       ),
            //     ]),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
