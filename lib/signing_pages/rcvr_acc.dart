import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cookie_manager.dart';
import 'package:glamgear/global_hlpr_n_wdgt/device_id_helper.dart';
import 'package:glamgear/global_hlpr_n_wdgt/random_digit_code.dart';
import 'package:glamgear/global_hlpr_n_wdgt/session_storage_mngr.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:glamgear/global_hlpr_n_wdgt/pop_scope_wdgt_sn.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RecoverAccount extends ConsumerStatefulWidget {
  const RecoverAccount({super.key});

  @override
  ConsumerState<RecoverAccount> createState() => _RecoverAccountState();
}

class _RecoverAccountState extends ConsumerState<RecoverAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _userCredController = TextEditingController();
  FocusNode? _recoverAccountFocusNode;
  final _fourRandomDigitCode = RandomDigitCode();
  String? _code;
  final _deviceIdHelper = DeviceIdHelper();
  String? _deviceId;
  final _dialogCommon = DialogCommon();
  final _dialogUncommon = DialogUncommon();

  Future<void> _processDeviceID() async {
    String? retrieveDeviceID = await _deviceIdHelper.getDeviceId();
    setState(() {
      _deviceId = retrieveDeviceID;
    });
  }

  Future<void> _processCodeRequest(String mobileNo) async {
    await ref.read(manageCodeRequestProvider.notifier).manageCode(
        email: null,
        mobileNo: mobileNo,
        deviceID: _deviceId,
        code: _code,
        functionKey: 'PROCESS_REQUEST');

    final codeResponse = ref.read(manageCodeRequestProvider);
    if (codeResponse is AsyncData &&
        codeResponse.value != 'SUCCESSFUL' &&
        mounted) {
      _dialogCommon.showDialogMessageCustomizableButton(
        context,
        'Error',
        'Message: $codeResponse',
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
      if (mounted) {
        /// do something
        SessionStorageManager.setSessionStorage('functionKey', 'recover');
        SessionStorageManager.setSessionStorage('isRegistration', false);

        kIsWeb
            ? context.go('//recover-account/otp-verifier', extra: {
                'functionKey': 'recover',
                'deviceID': _deviceId,
                'isRegistration': false
              })
            : GoRouter.of(context).push('/otp-verifier', extra: {
                'functionKey': 'recover',
                'deviceID': _deviceId,
                'isRegistration': false
              });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _recoverAccountFocusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _recoverAccountFocusNode!.requestFocus();
      _processDeviceID();
    });
  }

  @override
  void dispose() {
    _userCredController.dispose();
    _recoverAccountFocusNode!.dispose();
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
    final bool isExtraLargeScreen = MediaQuery.of(context).size.width > 1048 &&
        MediaQuery.of(context).size.width <= 1280;
    // final data = GlobalData().data;
    // final dataModel = Provider.of<DataModel>(context);
    // final customTheme = Theme.of(context).extension<CustomTheme>();
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;

    return KeyboardVisibilityBuilder(builder: (context, visible) {
      return PopScopeWidgetSN(
        focusNode: _recoverAccountFocusNode,
        visible: visible,
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
                  onPressed: () {
                    if (GoRouter.of(context).canPop()) {
                      GoRouter.of(context).pop();
                    }
                  },
                  icon: Icon(CupertinoIcons.chevron_left),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: RetainTextScaleWrapper(
                    child: Text(
                      'Recover Account', //data, //'Profile Name Here',
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
                  onPressed: () {},
                  child: RetainTextScaleWrapper(
                    child: const Text('Help'),
                  ),
                ),
              ],
            ), // Optional title for the app bar
          ),
          body: Form(
            key: _formKey,
            child: Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RetainTextScaleWrapper(
                        child: Text(
                            'Please enter your account recovery credentials',
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: RetainTextScaleWrapper(
                          child: TextFormField(
                            key: const ValueKey('user'),
                            controller: _userCredController,
                            focusNode: _recoverAccountFocusNode,
                            textInputAction: TextInputAction.next,
                            // onFieldSubmitted: (_) {
                            //   FocusScope.of(context).requestFocus(_mNameFocusNode);
                            // },
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
                                  ? Colors.white.withAlpha(240)
                                  : Colors.black87,
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
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: 'Email or Phone Number',
                              hintStyle: TextStyle(
                                color: isDarkMode
                                    ? Colors.white.withAlpha(240)
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
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  _userCredController.clear();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                            'Confirm',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onPressed: () {
                        _dialogUncommon.showAutoDismissDialog(
                            context,
                            'Coming soon...',
                            CupertinoIcons.settings,
                            Colors.blueAccent);
                        // if (_formKey.currentState?.validate() ?? false) { // to be continued...
                        //   final sharedPrefs = ref.watch(sharedPrefProvider);

                        //   sharedPrefs.saveAccountCredentialsForAccountRecovery(
                        //       _userCredController.text);

                        //   setState(() {
                        //     _code = _fourRandomDigitCode
                        //         .generateSixRandomDigitCode();
                        //   });
                        //   await _processCodeRequest(_userCredController.text);
                        // }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
