import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:glamgear/generated/l10n.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/main.dart';

class TermsOfService extends StatefulWidget {
  const TermsOfService({super.key});

  @override
  State<TermsOfService> createState() => _TermsOfServiceState();
}

class _TermsOfServiceState extends State<TermsOfService> {
  late ScrollController _scrollController;
  String _buttonText = 'Continue';

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _checkIfConfirmRequired();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    // Check if we've reached the bottom
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      setState(() {
        _buttonText = 'Confirm';
      });
    }
  }

  void _checkIfConfirmRequired() {
    // Check if we've reached the bottom

    Future.delayed(const Duration(milliseconds: 500), () {
      if (_scrollController.hasClients) {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          setState(() {
            _buttonText = 'Confirm';
          });
        }
      }
    });
  }

  void _scrollDown() {
    if (_scrollController.position.pixels !=
        _scrollController.position.maxScrollExtent) {
      _scrollController.animateTo(
        _scrollController.position.pixels +
            500.0, // Adjust this value for partial scroll
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final customTheme = Theme.of(context).extension<CustomTheme>();
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;
    MediaQuery.of(context).size.width <= 800;
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading:
        //     kIsWeb ? false : true, // This hides the default back button
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
        title: Wrap(
          spacing: 4.0,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            IconButton(
              icon: Icon(CupertinoIcons.chevron_left),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            RetainTextScaleWrapper(
              child: Text(
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                  'Terms of Service'),
            ),
          ],
        ),
        // leading: kIsWeb
        //     ? IconButton(
        //         icon: const Icon(Icons.arrow_back),
        //         onPressed: () {
        //           // developer.log(GoRouter.of(context) as String);
        //           // context.go('/sign-up');
        //           GoRouter.of(context).pop(); //push('/sign-up');
        //         },
        //       )
        //     : null,
      ),
      body: Container(
        color: colorScheme.surfaceContainerHighest,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: isSmallScreen
                    ? const EdgeInsets.all(25.0)
                    : isMediumScreen
                        ? const EdgeInsets.only(
                            left: 100.0, top: 25.0, right: 100, bottom: 25.0)
                        : const EdgeInsets.only(
                            left: 200.0, top: 25.0, right: 200, bottom: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: customTheme?.containerBackgroundColor,
                    borderRadius: BorderRadius.circular(4.0), // Border radius
                    border:
                        Border.all(color: Colors.transparent), // Border color
                  ),
                  padding: const EdgeInsets.all(15.0), // Padding for RichText
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: RetainTextScaleWrapper(
                      child: SelectableText.rich(
                        textAlign: TextAlign.justify,
                        TextSpan(
                            text: S.of(context).short_desc_data_lvl1,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      height: isSmallScreen ? 2 : 3,
                                      fontSize: isSmallScreen
                                          ? 16.0
                                          : 16.0, //I want to make uniform
                                    )
                            // style: TextStyle(
                            //     height: 2,
                            //     fontSize: 16.0,
                            //     color: Color.fromARGB(190, 0, 0, 0),
                            //     backgroundColor: Colors.transparent,
                            //     letterSpacing: 0.75,),
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: isSmallScreen
                  ? const EdgeInsets.all(25.0)
                  : isMediumScreen
                      ? const EdgeInsets.only(
                          left: 100.0, top: 25.0, right: 100, bottom: 25.0)
                      : const EdgeInsets.only(
                          left: 200.0, top: 25.0, right: 200, bottom: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isDarkMode
                            ? const Color.fromARGB(190, 255, 193, 7)
                                .withAlpha(25)
                            : Colors.lightBlue.shade50,
                        // shape: RoundedRectangleBorder(
                        //     side: BorderSide(
                        //         color: isDarkMode
                        //             ? const Color.fromARGB(190, 255, 193, 7)
                        //             : Colors.lightBlue,
                        //         width: 2.0),
                        //     borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RetainTextScaleWrapper(
                          child: Text(
                            'Decline',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: isDarkMode
                                      ? const Color.fromARGB(190, 255, 193, 7)
                                      : Colors.lightBlue,
                                ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RetainTextScaleWrapper(
                          child: Text(
                            _buttonText,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (_buttonText == 'Continue') {
                          _scrollDown();
                        } else {
                          kIsWeb
                              ? context.go('///terms-of-service/privacy-policy')
                              : GoRouter.of(context)
                                  .push('/privacy-policy'); //'/sign-up');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
