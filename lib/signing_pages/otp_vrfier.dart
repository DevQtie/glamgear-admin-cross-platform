import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/global_hlpr_n_wdgt/device_id_helper.dart';
import 'package:glamgear/global_hlpr_n_wdgt/ovrly_lder_w_app_ic.dart';
import 'package:glamgear/global_hlpr_n_wdgt/page_state_mngr.dart';
import 'package:glamgear/global_hlpr_n_wdgt/random_digit_code.dart';
import 'package:glamgear/global_hlpr_n_wdgt/session_storage_mngr.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:glamgear/internal/data_model/local_storage/shared_pref.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:developer' as developer;

class OTPVerifier extends ConsumerStatefulWidget {
  final String functionKey;
  final String? deviceID;
  final bool isRegistration;
  final String? mobileNo;

  const OTPVerifier({
    super.key,
    required this.functionKey,
    this.deviceID,
    required this.isRegistration,
    this.mobileNo,
  });

  @override
  ConsumerState<OTPVerifier> createState() => _OTPVerifierState();
}

class _OTPVerifierState extends ConsumerState<OTPVerifier> {
  final _textEditingController = TextEditingController();

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? _errorController;

  bool _hasError = false;
  String? _codeEntry;
  final _formKey = GlobalKey<FormState>();
  final _dialogUncommon = DialogUncommon();
  String? _userCredential;
  CountdownTimerController _countDownController =
      CountdownTimerController(endTime: 0, onEnd: null);
  int? _endTime;
  bool _isAllowToResend = false;
  FocusNode? _otpFocusNode;
  final _dialogCommon = DialogCommon();
  final _fourRandomDigitCode = RandomDigitCode();
  String? _code;
  bool _isActiveWidgets = true;

  final _deviceIdHelper = DeviceIdHelper();
  String? _deviceId;
  String? _devicePlatform;
  bool? _isPhysicalDevice;
  String? _deviceModel;
  String? _deviceVersion;

  void _onEnd() {
    _countDownController.disposeTimer();
    debugPrint('onEnd');
  }

  Future<void> _loadUserCredential() async {
    // final prefs = await ref.read(sharedPrefFutureProvider.future);
    String? updateState;
    // updateState = await prefs.getAccountCredentials();
    updateState = widget.mobileNo;
    if (kIsWeb) {}
    setState(() {
      _userCredential = updateState;
    });
    // developer.log('Data test: $_username');
  }

  Future<void> _getClipboardText() async {
    String text = await Clipboard.getData(Clipboard.kTextPlain).then((data) {
      if (data?.text == null) {
        return "";
      }
      // return int.tryParse(data.text.toString()) != null ? data.text ?? "" : ""; // to ensure digit only
      return data?.text ?? "";
    });
    if (mounted) {
      setState(() {
        if (int.tryParse(text.toString()) == null) {
          _errorController!.add(
              ErrorAnimationType.shake); // Triggering error shake animation
          _hasError = true;
          _textEditingController.text = text;
        }
        _textEditingController.text = text;
      });
    }
  }

  Future<void> _terminatePreviousRequest(String mobileNo) async {
    // I decided not to test this in the meantime, note that this is not the original version of the source code
    final isResent =
        SessionStorageManager.getSessionStorageBool('isResent') ?? false;

    if (isResent) {
      await ref.read(manageCodeRequestProvider.notifier).manageCode(
          email: null,
          mobileNo: mobileNo,
          deviceID: _deviceId,
          code: _code,
          functionKey: 'TERMINATE_PREV_REQ');
    } else {
      await ref.read(manageCodeRequestProvider.notifier).manageCode(
          email: null,
          mobileNo: mobileNo,
          deviceID: widget.deviceID,
          code: _code,
          functionKey: 'TERMINATE_PREV_REQ');
    }

    final codeResponse = ref.read(manageCodeRequestProvider);
    if (codeResponse is AsyncData &&
        codeResponse.value != 'SUCCESSFUL' &&
        mounted) {
      _dialogCommon.showDialogMessage(
          context, 'Error', 'Message: $codeResponse', 'OK');
    } else {
      _textEditingController.clear();
      SessionStorageManager.setSessionStorage('isResent', true);
      await _processCodeRequest(mobileNo);
    }
  }

  Future<void> _processCodeRequest(String mobileNo) async {
    // I decided not to test this in the meantime, note that this is not the original version of the source code

    if (widget.isRegistration) {
      await ref.read(manageCodeRequestProvider.notifier).manageCode(
          email: null,
          mobileNo: mobileNo,
          deviceID: _deviceId,
          code: _code,
          functionKey: 'PROCESS_SIGN_UP');
    } else {
      await ref.read(manageCodeRequestProvider.notifier).manageCode(
          email: null,
          mobileNo: mobileNo,
          deviceID: _deviceId,
          code: _code,
          functionKey: 'PROCESS_REQUEST');
    }

    final codeResponse = ref.read(manageCodeRequestProvider);
    if (codeResponse is AsyncData &&
        codeResponse.value != 'SUCCESSFUL' &&
        mounted) {
      if (mounted) {
        _dialogCommon.showDialogMessage(
            context, 'Error', 'Message: $codeResponse', 'OK');
      }
    } else {
      _textEditingController.clear();
      if (mounted) {
        widget.isRegistration
            ? context.go('/otp-verifier', extra: {
                'functionKey': widget.functionKey,
                'deviceID': widget.deviceID,
                'mobileNo': mobileNo,
                'isRegistration': widget.isRegistration
              })
            : context.go('/otp-verifier', extra: {
                'functionKey': widget.functionKey,
                'deviceID': widget.deviceID,
                'mobileNo': mobileNo,
                'isRegistration': widget.isRegistration
              });
        _endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 11;
        _countDownController =
            CountdownTimerController(endTime: _endTime!, onEnd: _onEnd);
      }
    }
  }

  Future<void> _validateCodeRequest(
      // I decided not to test this in the meantime, note that this is not the original version of the source code
      DataModel sharedPrefs,
      String mobileNo,
      String codeToVerify) async {
    final isResent =
        SessionStorageManager.getSessionStorageBool('isResent') ?? false;

    if (isResent) {
      await ref.read(manageCodeRequestProvider.notifier).manageCode(
          email: null,
          mobileNo: mobileNo,
          deviceID: _deviceId,
          code: codeToVerify,
          functionKey: 'VERIFY');
    } else {
      await ref.read(manageCodeRequestProvider.notifier).manageCode(
          email: null,
          mobileNo: mobileNo,
          deviceID: widget.deviceID,
          code: codeToVerify,
          functionKey: 'VERIFY');
    }
    final codeResponse = ref.read(manageCodeRequestProvider);
    if (codeResponse is AsyncData &&
        codeResponse.value != 'SUCCESSFUL' &&
        mounted) {
      if (mounted) {
        _errorController!
            .add(ErrorAnimationType.shake); // Triggering error shake animation
        setState(() => _hasError = true);
      }
    } else {
      if (mounted) {
        setState(
          () {
            _hasError = false;
            _isActiveWidgets = false;
            _countDownController.disposeTimer();
          },
        );
        if (widget.isRegistration) {
          await _processPartialRegistration(sharedPrefs, mobileNo);
        } else {
          SessionStorageManager.setSessionStorage('isResent', false);

          String mobileNoStringInterpolation = '+63$mobileNo';

          widget.functionKey == 'sign-in'
              ? await _processSignIn(sharedPrefs, mobileNoStringInterpolation)
              : kIsWeb
                  ? context.go('///recover-account/otp-verifier/change-pword')
                  : GoRouter.of(context).push('/change-pword');
        }
      }
    }
  }

  Future<void> _processSignIn(DataModel sharedPrefs, String mobileNo) async {
    // I decided not to test this in the meantime, note that this is not the original version of the source code
    final isResent =
        SessionStorageManager.getSessionStorageBool('isResent') ?? false;

    if (isResent) {
      await ref.read(processUserRequestProvider.notifier).processUserReq(
            // put argument to other parameter if necessary
            deviceID: _deviceId,
            birthday: DateTime.now().toIso8601String(),
            country: 'Philippines',
            mobileNo: _userCredential,
            functionKey: 'SIGN_IN',
          );
    } else {
      await ref.read(processUserRequestProvider.notifier).processUserReq(
            // put argument to other parameter if necessary
            deviceID: widget.deviceID,
            birthday: DateTime.now().toIso8601String(),
            country: 'Philippines',
            mobileNo: _userCredential,
            functionKey: 'SIGN_IN',
          );
    }

    final signInResponse = ref.read(processUserRequestProvider);
    // final apiResponse = signInResponse; // Map<String, dynamic>
    // final apiResponse = signInResponse; // List<dynamic>
    developer.log('${signInResponse.runtimeType}'); // data type checker

    // final decodedAPIJsonString = apiResponse['recordsets'][0];

    if (signInResponse is AsyncData &&
        signInResponse.value.isEmpty &&
        mounted) {
      // THERE'S POSSIBLE EMPTY RESPONSE
      SessionStorageManager.setSessionStorage('isResent', false);
      if (mounted) {
        setState(() {
          _isActiveWidgets = true;
        });
        _dialogCommon.showDialogMessageCustomizableButton(
          context,
          'Error',
          'Message: User credential cannot be found!',
          TextButton(
            onPressed: () {
              // context.go('/dashboard');
              int count = 0;
              Navigator.of(context)
                  .popUntil((_) => count++ >= 2); // navigate back 2 times
            },
            child: RetainTextScaleWrapper(child: Text('OK')),
          ),
        );
      }
      return;
    }

    String? userName = signInResponse.value[0]['user_id'];
    // String? email = decodedAPIJsonString[0]['email_add']; // Unnecessary at the moment
    String? mobileNo = signInResponse.value[0]['mobile_no'];

    // developer.log(
    //     'See values: $apiResponse'); // it generates the whole SQL Server returned values

    if (mobileNo == null) {
      SessionStorageManager.setSessionStorage('isResent', false);
      if (mounted) {
        setState(() {
          _isActiveWidgets = true;
        });
        _dialogCommon.showDialogMessageCustomizableButton(
          context,
          'Error',
          'Message: User credential cannot be found!',
          TextButton(
            onPressed: () {
              // context.go('/dashboard');
              int count = 0;
              Navigator.of(context)
                  .popUntil((_) => count++ >= 2); // navigate back 2 times
            },
            child: RetainTextScaleWrapper(child: Text('OK')),
          ),
        );
      }
    } else if (mobileNo != _userCredential) {
      SessionStorageManager.setSessionStorage('isResent', false);
      if (mounted) {
        setState(() {
          _isActiveWidgets = true;
        });
        _dialogCommon.showDialogMessageCustomizableButton(
          context,
          'Error',
          'Message: $signInResponse',
          TextButton(
            onPressed: () {
              // context.go('/dashboard');
              int count = 0;
              Navigator.of(context)
                  .popUntil((_) => count++ >= 2); // navigate back 2 times
            },
            child: RetainTextScaleWrapper(child: Text('OK')),
          ),
        );
      }
    } else {
      await _processDevicePropertiesSignIn(sharedPrefs, userName!, mobileNo);
    }
  }

  Future<void> _processDevicePropertiesSignIn(
      DataModel sharedPrefs, String userID, String mobileNo) async {
    await ref
        .read(manageDevicePropertiesProvider.notifier)
        .proccessDeviceProperties(
          adminID: userID,
          devicePlatform: _devicePlatform,
          deviceState: _isPhysicalDevice,
          deviceModel: _deviceModel,
          deviceVersion: _deviceVersion,
          functionKey: 'SIGN-IN',
        );
    final processDeviceProperties = ref.read(manageDevicePropertiesProvider);

    if (!mounted) {
      // reverse engineering, char
      return;
    }

    if (processDeviceProperties is AsyncData &&
        processDeviceProperties.value != 'SUCCESSFUL' &&
        mounted) {
      SessionStorageManager.setSessionStorage('isResent', false);
      setState(() {
        _isActiveWidgets = true;
      });
      _dialogCommon.showDialogMessageCustomizableButton(
        context,
        'Error',
        'Message: $processDeviceProperties',
        TextButton(
          onPressed: () {
            // context.go('/dashboard');
            int count = 0;
            Navigator.of(context)
                .popUntil((_) => count++ >= 2); // navigate back 2 times
          },
          child: RetainTextScaleWrapper(child: Text('OK')),
        ),
      );
    } else {
      SessionStorageManager.setSessionStorage('isResent', false);

      sharedPrefs.saveAccountCredentialsForAccountRecovery(mobileNo);
      if (mounted) {
        sharedPrefs.saveAdminID(userID);
        _dialogUncommon.showAutoDismissDialog(context, 'Login successfully!',
            CupertinoIcons.check_mark_circled, Colors.greenAccent);
      }
      ref
          .read(dashboardBottomAppBarIndexProvider.notifier)
          .setIndex(); // to initialize the bottomNavigationBar index
      Future.delayed(const Duration(milliseconds: 1000), () {
        if (mounted) {
          context.go('/home-b');
        }
      });
    }
  }

  Future<void> _processPartialRegistration(
      DataModel sharedPrefs, String mobileNo) async {
    final isResent =
        SessionStorageManager.getSessionStorageBool('isResent') ?? false;

    if (isResent) {
      await ref.read(processUserRequestProvider.notifier).processUserReq(
            // put argument to other parameter if necessary
            deviceID: _deviceId,
            birthday: DateTime.now().toIso8601String(),
            country: 'Philippines',
            mobileNo: _userCredential,
            functionKey: 'SIGN_IN',
          );
    } else {
      await ref.read(processUserRequestProvider.notifier).processUserReq(
            // put argument to other parameter if necessary
            deviceID: widget.deviceID,
            birthday: DateTime.now().toIso8601String(),
            country: 'Philippines',
            mobileNo: _userCredential,
            functionKey: 'SIGN_IN',
          );
    }

    final partialRegistrationResponse = ref.read(processUserRequestProvider);

    if (partialRegistrationResponse is AsyncData &&
        partialRegistrationResponse.value == 'No records found.' &&
        mounted) {
      setState(() {
        _isActiveWidgets = true;
      });
      _dialogCommon.showDialogMessageCustomizableButton(
        context,
        'Error',
        'Message: $partialRegistrationResponse',
        TextButton(
          onPressed: () {
            // context.go('/dashboard');
            int count = 0;
            Navigator.of(context)
                .popUntil((_) => count++ >= 2); // navigate back 2 times
          },
          child: RetainTextScaleWrapper(child: Text('OK')),
        ),
      );
    } else {
      await _processDevicePropertiesSignUp(
          sharedPrefs, partialRegistrationResponse.value, mobileNo);
    }
  }

  Future<void> _processDevicePropertiesSignUp(
      DataModel sharedPrefs, String? userID, String mobileNo) async {
    await ref
        .read(manageDevicePropertiesProvider.notifier)
        .proccessDeviceProperties(
          adminID: userID,
          devicePlatform: _devicePlatform,
          deviceState: _isPhysicalDevice,
          deviceModel: _deviceModel,
          deviceVersion: _deviceVersion,
          functionKey: 'SIGN-IN',
        );

    final processDeviceProperties = ref.read(manageDevicePropertiesProvider);

    if (!mounted) {
      // reverse engineering, char
      return;
    }

    if (processDeviceProperties is AsyncData &&
        processDeviceProperties.value != 'SUCCESSFUL' &&
        mounted) {
      SessionStorageManager.setSessionStorage('isResent', false);
      setState(() {
        _isActiveWidgets = true;
      });
      _dialogCommon.showDialogMessageCustomizableButton(
        context,
        'Error',
        'Message: $processDeviceProperties',
        TextButton(
          onPressed: () {
            // context.go('/dashboard');
            int count = 0;
            Navigator.of(context)
                .popUntil((_) => count++ >= 2); // navigate back 2 times
          },
          child: RetainTextScaleWrapper(child: Text('OK')),
        ),
      );
    } else {
      SessionStorageManager.setSessionStorage('isResent', false);

      String mobileNoStringInterpolation = '+63$mobileNo';

      sharedPrefs.saveAccountCredentialsForAccountRecovery(
          mobileNoStringInterpolation);
      if (mounted) {
        _dialogUncommon.showAutoDismissDialog(
            context,
            'Registered successfully!',
            CupertinoIcons.check_mark_circled,
            Colors.greenAccent);
        sharedPrefs.saveAdminID(userID!);
      }
      Future.delayed(const Duration(milliseconds: 1000), () {
        if (mounted) {
          context.go('/home-b');
        }
      });
    }
  }

  Future<void> _processDeviceID() async {
    String? retrieveDeviceID = await _deviceIdHelper.getDeviceId();
    setState(() {
      _deviceId = retrieveDeviceID;
    });
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
    _endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 11;

    _errorController = StreamController<ErrorAnimationType>();
    _loadUserCredential();
    _countDownController =
        CountdownTimerController(endTime: _endTime!, onEnd: _onEnd);
    _otpFocusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _otpFocusNode!.requestFocus();
      _processDeviceID();
      _getDeviceProperties();
    });
  }

  @override
  void dispose() {
    _errorController!.close();
    _countDownController.dispose();
    _otpFocusNode!.dispose();
    super.dispose();
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
    // final customTheme = Theme.of(context).extension<CustomTheme>();
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;

    final sharedPrefs = ref.watch(sharedPrefProvider);

    return KeyboardVisibilityBuilder(builder: (context, visible) {
      return PopScope<Object?>(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, Object? result) {
          if (didPop) {
            return;
          }
          if (_isActiveWidgets) {
            if (visible) {
              _otpFocusNode!.unfocus();
            } else {
              developer.log('Status: ${widget.isRegistration}');
              widget.isRegistration
                  ? context.go('///access-thru-mobile-no', extra: {
                      'functionKey': widget.functionKey,
                      'isRegistration': widget.isRegistration
                    })
                  : widget.functionKey == 'sign-in'
                      ? context.go('///access-thru-mobile-no', extra: {
                          'functionKey': widget.functionKey,
                          'isRegistration': widget.isRegistration
                        })
                      : context.go('///recover-account');
            }
          } else {
            null;
          }
        },
        child: KeyboardDismissOnTap(
          dismissOnCapturedTaps: _isActiveWidgets,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
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
              forceMaterialTransparency: true,
              // backgroundColor: colorScheme.surfaceContainerHighest,
              title: Row(
                children: [
                  IconButton(
                    onPressed: _isActiveWidgets
                        ? () {
                            if (GoRouter.of(context).canPop()) {
                              GoRouter.of(context).pop();
                            } else {
                              developer.log('Status: ${widget.isRegistration}');
                              widget.isRegistration
                                  ? context
                                      .go('///access-thru-mobile-no', extra: {
                                      'functionKey': widget.functionKey,
                                      'isRegistration': widget.isRegistration
                                    })
                                  : widget.functionKey == 'sign-in'
                                      ? context.go('///access-thru-mobile-no',
                                          extra: {
                                              'functionKey': widget.functionKey,
                                              'isRegistration':
                                                  widget.isRegistration
                                            })
                                      : context.go('///recover-account');
                            }
                          }
                        : null,
                    icon: Icon(CupertinoIcons.chevron_left),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: RetainTextScaleWrapper(
                      child: Text(
                        'Enter OTP Code', //data, //'Profile Name Here',
                        // dataModel.data,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: isSmallScreen ? 24 : 30),
                      ),
                    ),
                  ),
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    onPressed: _isActiveWidgets ? () {} : null,
                    child: RetainTextScaleWrapper(
                      child: const Text('Help'),
                    ),
                  ),
                ],
              ), // Optional title for the app bar
            ),
            body: Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: colorScheme.surfaceContainerHighest),
                  padding: isSmallScreen
                      ? const EdgeInsets.only(
                          top: 10.0, right: 10.0, bottom: 15.0, left: 10.0)
                      : isMediumScreen
                          ? const EdgeInsets.only(
                              top: 10.0, right: 70.0, bottom: 15.0, left: 70.0)
                          : isLargeScreen
                              ? const EdgeInsets.only(
                                  top: 10.0,
                                  right: 100.0,
                                  bottom: 15.0,
                                  left: 100.0)
                              : const EdgeInsets.only(
                                  top: 10.0,
                                  right: 200.0,
                                  bottom: 15.0,
                                  left: 200.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    // width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: <Widget>[
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 8),
                          child: RetainTextScaleWrapper(
                            child: Text(
                              'Account Verification',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 8),
                          child: (_userCredential == null)
                              ? Center(
                                  child: LoadingAnimationWidget.stretchedDots(
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                )
                              : RetainTextScaleWrapper(
                                  child: RichText(
                                    text: TextSpan(
                                      text: "Enter the 6-digit code sent to: ",
                                      children: [
                                        TextSpan(
                                          text:
                                              '\n${_userCredential!.toString()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.normal),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          key: _formKey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 0.0,
                              horizontal: 32.0,
                            ),
                            child: RetainTextScaleWrapper(
                              child: PinCodeTextField(
                                autoDisposeControllers: false,
                                focusNode: _otpFocusNode,
                                backgroundColor: Colors.transparent,
                                appContext: context,
                                enabled: _isActiveWidgets,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                // inputFormatters: [
                                //   FilteringTextInputFormatter.digitsOnly
                                // ], // to ensure digit only
                                // pastedTextStyle: const TextStyle(
                                //   color: Colors.black, //Colors.greenAccent.withAlpha(50),
                                //   fontWeight: FontWeight.bold,
                                // ),
                                length: 6,
                                // obscureText: true,
                                // obscuringCharacter: '*',
                                // obscuringWidget: const FlutterLogo(
                                //   size: 24,
                                // ),
                                // blinkWhenObscuring: true,
                                animationType: AnimationType.fade,
                                // validator: (v) {
                                //   if (v!.length < 3) {
                                //     return "I'm from validator";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(4),
                                  fieldHeight: 50,
                                  fieldWidth: 40,
                                  selectedColor: Colors.redAccent.shade200,
                                  errorBorderColor: Colors.redAccent.shade200,
                                  inactiveColor: isDarkMode
                                      ? const Color.fromARGB(190, 255, 193, 7)
                                      : Colors.lightBlue,
                                  selectedFillColor: Colors.transparent,
                                  inactiveFillColor: isDarkMode
                                      ? Colors.grey.shade800
                                          .withValues(alpha: 0.75)
                                      : Colors.white70,
                                  activeFillColor: Colors.transparent,
                                ),
                                cursorColor: isDarkMode
                                    ? const Color.fromARGB(190, 255, 193, 7)
                                    : Colors.lightBlue,
                                animationDuration:
                                    const Duration(milliseconds: 300),
                                enableActiveFill: true,
                                errorAnimationController: _errorController,
                                controller: _textEditingController,
                                keyboardType: TextInputType.number,
                                boxShadows: const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    color: Colors.black12,
                                    blurRadius: 10,
                                  )
                                ],
                                onCompleted: _isActiveWidgets
                                    ? (v) async {
                                        // debugPrint("Completed");
                                        _formKey.currentState!.validate();

                                        // conditions for validating
                                        if (_codeEntry?.length != 6) {
                                          _errorController!.add(ErrorAnimationType
                                              .shake); // Triggering error shake animation
                                          setState(() => _hasError = true);
                                        } else {
                                          await _validateCodeRequest(
                                              sharedPrefs,
                                              _userCredential!,
                                              _codeEntry!);
                                        }
                                      }
                                    : null,
                                // onTap: () {
                                //   print("Pressed");
                                // },
                                onChanged: _isActiveWidgets
                                    ? (value) {
                                        debugPrint(value);
                                        setState(() {
                                          _codeEntry = value;
                                        });
                                      }
                                    : null,
                                beforeTextPaste: _isActiveWidgets
                                    ? (text) {
                                        debugPrint("Allowing to paste $text");
                                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                        return true;
                                      }
                                    : null,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Flexible(
                                child: TextButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                  ),
                                  onPressed: _isActiveWidgets
                                      ? () {
                                          _textEditingController.clear();
                                        }
                                      : null,
                                  child: const RetainTextScaleWrapper(
                                      child: Text("Clear")),
                                ),
                              ),
                              Flexible(
                                child: TextButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                  ),
                                  onPressed: _isActiveWidgets
                                      ? _getClipboardText
                                      : null,
                                  child: RetainTextScaleWrapper(
                                      child: const Text("Paste OTP")),
                                  // () {
                                  // setState(() {
                                  //   textEditingController.text =
                                  //       _getClipboardText() as String;
                                  // });
                                  // },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: RetainTextScaleWrapper(
                            child: Text(
                              _hasError ? "*Invalid OTP" : "",
                              style: TextStyle(
                                color: Colors.redAccent.shade200,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 0.0),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            alignment: WrapAlignment.center,
                            children: [
                              RetainTextScaleWrapper(
                                child: Text(
                                  "Didn't receive the code? ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.normal),
                                ),
                              ),
                              TextButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  overlayColor: _isAllowToResend
                                      ? isDarkMode
                                          ? const Color.fromARGB(
                                              190, 255, 193, 7)
                                          : Colors.lightBlue
                                      : Colors.transparent,
                                ),
                                onPressed: _isActiveWidgets
                                    ? () async {
                                        if (_isAllowToResend) {
                                          setState(() {
                                            _code = _fourRandomDigitCode
                                                .generateSixRandomDigitCode();
                                          });
                                          await _terminatePreviousRequest(
                                              _userCredential!);
                                        } else {
                                          null;
                                        }
                                      }
                                    : null,
                                child:
                                    // Text(
                                    //   "Resend",
                                    //   style: Theme.of(context)
                                    //       .textTheme
                                    //       .bodyMedium
                                    //       ?.copyWith(fontWeight: FontWeight.bold),
                                    // ),
                                    CountdownTimer(
                                  controller: _countDownController,
                                  onEnd: _onEnd,
                                  endTime: _endTime,
                                  widgetBuilder: (_, time) {
                                    if (time == null) {
                                      if (context.mounted) {
                                        SchedulerBinding.instance
                                            .addPostFrameCallback((_) {
                                          setState(() {
                                            _isAllowToResend = true;
                                          });
                                        });
                                      }
                                      return RetainTextScaleWrapper(
                                        child: Text(
                                          "Resend",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    }
                                    return RetainTextScaleWrapper(
                                      child: Text(
                                        'Resend OTP in ${time.sec}s',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.redAccent.shade200,
                                            ),
                                      ),
                                    );
                                  },
                                  // endWidget: Text(
                                  //   "Resend",
                                  //   style: Theme.of(context)
                                  //       .textTheme
                                  //       .bodyMedium
                                  //       ?.copyWith(fontWeight: FontWeight.bold),
                                  // ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: OverlayLoaderWithAppIconHelper(
                      isLoading: !_isActiveWidgets),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
