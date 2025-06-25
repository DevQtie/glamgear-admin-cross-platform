import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:go_router/go_router.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
// import 'dart:developer' as developer;

class ChangePword extends StatefulWidget {
  const ChangePword({super.key});

  @override
  State<ChangePword> createState() => _ChangePwordState();
}

class _ChangePwordState extends State<ChangePword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _pwordController = TextEditingController();
  final _confPwordController = TextEditingController();
  final _focusNodePw = FocusNode();
  final _focusNodeCPw = FocusNode();
  // final _strongPasswordRegex = RegExp(
  //     r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
  final _lowerCaseLetter = RegExp(r'(?=.*[a-z])');
  final _upperCaseLetter = RegExp(r'(?=.*[A-Z])');
  final _digit = RegExp(r'(?=.*\d)');
  final _symbolChar = RegExp(r'(?=.*[!@#$%^&*()_+{}|:<>?[\];\' ',./~`-])');
  final _minEightCharLength = RegExp(r'^.{8,}$');
  bool _hasErrorPw = false;
  bool _hasErrorCPw = false;
  // final String _errorMessage = 'Invalid strong password';
  bool _isPasswordVisible = false;
  bool _isCPasswordVisible = false;

  bool _invLowercasePw = true;
  bool _invUpperCasePw = true;
  bool _invDigitPw = true;
  bool _invSymbolPw = true;
  bool _invMinCharPw = true;
  bool _invPwCPwMatch = true;

  // Global key for the Tooltip to show it programmatically
  final GlobalKey _tooltipPwKey = GlobalKey();
  final GlobalKey _tooltipCPwKey = GlobalKey();
  final _dialogUncommon = DialogUncommon();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 250)).then((_) {
      _focusNodePw.requestFocus();
    }); //this is useful to avoid having lag/buffer delay
  }

  @override
  void dispose() {
    _pwordController.dispose();
    _confPwordController.dispose();
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

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) {
          return;
        }
        context.go('/glamgear');
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          forceMaterialTransparency: true,
          // backgroundColor: colorScheme.surfaceContainerHighest,
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
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  context.go('/glamgear');
                },
                icon: Icon(CupertinoIcons.chevron_left),
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: RetainTextScaleWrapper(
                  child: Text(
                    'Change Password', //data, //'Profile Name Here',
                    // dataModel.data,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
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
        body: LayoutBuilder(builder: (context, constraint) {
          double maxHeight = constraint.maxHeight;
          return SingleChildScrollView(
            child: Form(
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
                child: SizedBox(
                  height: maxHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RetainTextScaleWrapper(
                        child: Text('Please enter strong password',
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
                            key: const ValueKey('pw'),
                            obscureText: !_isPasswordVisible,
                            controller: _pwordController,
                            focusNode: _focusNodePw,
                            // autovalidateMode: AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(_focusNodeCPw);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorPw = true;
                                  });
                                });
                                return 'Required';
                              }

                              // if (_strongPasswordRegex.hasMatch(value)) { // straightforward and compact
                              //   setState(() {
                              //     _hasErrorPw = false;
                              //   });
                              //   return null;
                              // }
                              // else

                              if (_pwordController.text !=
                                  _confPwordController.text) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorPw = true;
                                    _invPwCPwMatch = true;
                                  });
                                });
                                return "Password and confirm password didn't match";
                              }
                              //   if ((_pwordController.text ==
                              //       _confPwordController.text)) {
                              //     WidgetsBinding.instance.addPostFrameCallback((_) {
                              //       setState(() {
                              //         _invPwCPwMatch = false;
                              //       });
                              //     });
                              //   }
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                setState(() {
                                  _invPwCPwMatch = false;
                                });
                              });
                              if (!_lowerCaseLetter.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorPw = true;
                                    _invLowercasePw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              } else {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _invLowercasePw = false;
                                  });
                                });
                              }
                              if (!_upperCaseLetter.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorPw = true;
                                    _invUpperCasePw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              } else {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _invUpperCasePw = false;
                                  });
                                });
                              }
                              if (!_digit.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorPw = true;
                                    _invDigitPw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              } else {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _invDigitPw = false;
                                  });
                                });
                              }
                              if (!_symbolChar.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorPw = true;
                                    _invSymbolPw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              }
                              //   if (_symbolChar.hasMatch(value)) {
                              //     WidgetsBinding.instance.addPostFrameCallback((_) {
                              //       setState(() {
                              //         _invSymbolPw = false;
                              //       });
                              //     });
                              //   }
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                setState(() {
                                  _invSymbolPw = false;
                                });
                              });
                              if (!_minEightCharLength.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorPw = true;
                                    _invMinCharPw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              } else {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorPw = false;
                                    _invMinCharPw = false;
                                  });
                                });
                                return null;
                              }
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
                              hintText: 'Strong Password',
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
                              prefixIcon: _hasErrorPw
                                  ? InkWell(
                                      onTap: () {
                                        final dynamic tooltip =
                                            _tooltipPwKey.currentState;
                                        tooltip?.ensureTooltipVisible();
                                      },
                                      child: Tooltip(
                                        key: _tooltipPwKey,
                                        message: _pwordController.text == '' ||
                                                _pwordController.text.isEmpty
                                            ? 'Required'
                                            : _pwordController.text !=
                                                    _confPwordController.text
                                                ? "Password and confirm password didn't match"
                                                : 'Invalid strong password.',
                                        child: const Icon(Icons.error,
                                            color: Colors.red),
                                      ),
                                    )
                                  : null,
                              suffixIcon: Wrap(
                                direction: Axis.horizontal,
                                children: [
                                  IconButton(
                                    icon: Icon(_isPasswordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordVisible =
                                            !_isPasswordVisible;
                                      });
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.close),
                                    onPressed: () {
                                      _pwordController.clear();
                                      if (_pwordController.text == '' ||
                                          _pwordController.text.isEmpty &&
                                              _pwordController.text == '' ||
                                          _pwordController.text.isEmpty) {
                                        _invLowercasePw = true;
                                        _invUpperCasePw = true;
                                        _invDigitPw = true;
                                        _invSymbolPw = true;
                                        _invMinCharPw = true;
                                        _invPwCPwMatch = true;
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      RetainTextScaleWrapper(
                        child: Text('Please re-enter strong password',
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
                            key: const ValueKey('cpw'),
                            obscureText: !_isCPasswordVisible,
                            controller: _confPwordController,
                            focusNode: _focusNodeCPw,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.done,
                            // onFieldSubmitted: (_) {
                            //   FocusScope.of(context).requestFocus(_mNameFocusNode);
                            // },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorCPw = true;
                                  });
                                });
                                return 'Required';
                              }

                              // if (_strongPasswordRegex.hasMatch(value)) { // straightforward and compact
                              //   setState(() {
                              //     _hasErrorCPw = false;
                              //   });
                              //   return null;
                              // }
                              // else
                              if (_pwordController.text !=
                                  _confPwordController.text) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorCPw = true;
                                    _invPwCPwMatch = true;
                                  });
                                });
                                return "Password and confirm password didn't match";
                              }
                              //   else {
                              //     WidgetsBinding.instance.addPostFrameCallback((_) {
                              //       setState(() {
                              //         _invPwCPwMatch = false;
                              //       });
                              //     });
                              //   }
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                setState(() {
                                  _invPwCPwMatch = false;
                                });
                              });
                              if (!_lowerCaseLetter.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorCPw = true;
                                    _invLowercasePw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              } else {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _invLowercasePw = false;
                                  });
                                });
                              }
                              if (!_upperCaseLetter.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorCPw = true;
                                    _invUpperCasePw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              } else {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _invUpperCasePw = false;
                                  });
                                });
                              }
                              if (!_digit.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorCPw = true;
                                    _invDigitPw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              } else {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _invDigitPw = false;
                                  });
                                });
                              }
                              if (!_symbolChar.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorCPw = true;
                                    _invSymbolPw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              }
                              //   else {
                              //     WidgetsBinding.instance.addPostFrameCallback((_) {
                              //       setState(() {
                              //         _invSymbolPw = false;
                              //       });
                              //     });
                              //   }
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                setState(() {
                                  _invSymbolPw = false;
                                });
                              });
                              if (!_minEightCharLength.hasMatch(value)) {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorCPw = true;
                                    _invMinCharPw = true;
                                  });
                                });
                                return 'Invalid strong password.';
                              } else {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    _hasErrorCPw = false;
                                    _invMinCharPw = false;
                                  });
                                });
                                return null;
                              }
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
                              hintText: 'Confirm Strong Password',
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
                              prefixIcon: _hasErrorCPw
                                  ? InkWell(
                                      onTap: () {
                                        final dynamic tooltip =
                                            _tooltipCPwKey.currentState;
                                        tooltip?.ensureTooltipVisible();
                                      },
                                      child: Tooltip(
                                        key: _tooltipCPwKey,
                                        message: _pwordController.text == '' ||
                                                _pwordController.text.isEmpty
                                            ? 'Required'
                                            : _pwordController.text !=
                                                    _confPwordController.text
                                                ? "Password and confirm password didn't match"
                                                : 'Invalid strong password.',
                                        child: const Icon(Icons.error,
                                            color: Colors.red),
                                      ),
                                    )
                                  : null,
                              suffixIcon: Wrap(
                                direction: Axis.horizontal,
                                children: [
                                  IconButton(
                                    icon: Icon(_isCPasswordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _isCPasswordVisible =
                                            !_isCPasswordVisible;
                                      });
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.close),
                                    onPressed: () {
                                      _confPwordController.clear();
                                      if (_pwordController.text == '' ||
                                          _pwordController.text.isEmpty &&
                                              _pwordController.text == '' ||
                                          _pwordController.text.isEmpty) {
                                        _invLowercasePw = true;
                                        _invUpperCasePw = true;
                                        _invDigitPw = true;
                                        _invSymbolPw = true;
                                        _invMinCharPw = true;
                                        _invPwCPwMatch = true;
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        alignment: WrapAlignment.start,
                        children: [
                          Row(
                            children: [
                              !_invPwCPwMatch
                                  ? Icon(CupertinoIcons.check_mark_circled,
                                      color: Colors.greenAccent)
                                  : Icon(CupertinoIcons.xmark_circle_fill,
                                      color: Colors.redAccent),
                              !_invPwCPwMatch
                                  ? RetainTextScaleWrapper(
                                      child: Text(
                                          'Password and confirm password match.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.greenAccent,
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  : RetainTextScaleWrapper(
                                      child: Text(
                                          'Password and confirm password match.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.redAccent,
                                                  fontWeight: FontWeight.bold)),
                                    ),
                            ],
                          ),
                          Row(
                            children: [
                              !_invLowercasePw
                                  ? Icon(CupertinoIcons.check_mark_circled,
                                      color: Colors.greenAccent)
                                  : Icon(CupertinoIcons.xmark_circle_fill,
                                      color: Colors.redAccent),
                              !_invLowercasePw
                                  ? RetainTextScaleWrapper(
                                      child: Text(
                                          'At least 1 lowercase character.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.greenAccent,
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  : RetainTextScaleWrapper(
                                      child: Text(
                                          'At least 1 lowercase character.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.redAccent,
                                                  fontWeight: FontWeight.bold)),
                                    ),
                            ],
                          ),
                          Row(
                            children: [
                              !_invUpperCasePw
                                  ? Icon(CupertinoIcons.check_mark_circled,
                                      color: Colors.greenAccent)
                                  : Icon(CupertinoIcons.xmark_circle_fill,
                                      color: Colors.redAccent),
                              !_invUpperCasePw
                                  ? RetainTextScaleWrapper(
                                      child: Text(
                                          'At least 1 uppercase character.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.greenAccent,
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  : RetainTextScaleWrapper(
                                      child: Text(
                                          'At least 1 uppercase character.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.redAccent,
                                                  fontWeight: FontWeight.bold)),
                                    ),
                            ],
                          ),
                          Row(
                            children: [
                              !_invDigitPw
                                  ? Icon(CupertinoIcons.check_mark_circled,
                                      color: Colors.greenAccent)
                                  : Icon(CupertinoIcons.xmark_circle_fill,
                                      color: Colors.redAccent),
                              !_invDigitPw
                                  ? RetainTextScaleWrapper(
                                      child: Text('At least 1 digit character.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.greenAccent,
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  : RetainTextScaleWrapper(
                                      child: Text('At least 1 digit character.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.redAccent,
                                                  fontWeight: FontWeight.bold)),
                                    ),
                            ],
                          ),
                          Row(
                            children: [
                              !_invSymbolPw
                                  ? Icon(CupertinoIcons.check_mark_circled,
                                      color: Colors.greenAccent)
                                  : Icon(CupertinoIcons.xmark_circle_fill,
                                      color: Colors.redAccent),
                              !_invSymbolPw
                                  ? RetainTextScaleWrapper(
                                      child: Text(
                                          'At least 1 symbol character.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.greenAccent,
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  : RetainTextScaleWrapper(
                                      child: Text(
                                          'At least 1 symbol character.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.redAccent,
                                                  fontWeight: FontWeight.bold)),
                                    ),
                            ],
                          ),
                          Row(
                            children: [
                              !_invMinCharPw
                                  ? Icon(CupertinoIcons.check_mark_circled,
                                      color: Colors.greenAccent)
                                  : Icon(CupertinoIcons.xmark_circle_fill,
                                      color: Colors.redAccent),
                              !_invMinCharPw
                                  ? RetainTextScaleWrapper(
                                      child: Text('At least 8 characters.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.greenAccent,
                                                  fontWeight: FontWeight.bold)),
                                    )
                                  : RetainTextScaleWrapper(
                                      child: Text('At least 8 characters.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Colors.redAccent,
                                                  fontWeight: FontWeight.bold)),
                                    ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
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
                            if (_formKey.currentState?.validate() ?? false) {
                              //   final dataModel =
                              //       Provider.of<DataModel>(context, listen: false);

                              //   dataModel.saveAccountCredentialsForAccountRecovery(
                              //       _pwordController.text);

                              // kIsWeb
                              //     ? context.go('//recover-account/otp-verifier')
                              //     : GoRouter.of(context)
                              //         .push(Uri(path: '/otp-verifier').toString()); // you can remove URI here, except the path argument
                              _dialogUncommon.showAutoDismissDialog(
                                  context,
                                  'Coming soon...',
                                  CupertinoIcons.settings,
                                  Colors.blueAccent);
                              Future.delayed(const Duration(milliseconds: 2000),
                                  () {
                                if (context.mounted) {
                                  context.go('/glamgear');
                                }
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
