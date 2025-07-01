import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/firebase_auth_helper.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'dart:developer' as developer;

import 'package:go_router/go_router.dart';

class SigningHelper {
  static Future<void> verifyAdmin(
    BuildContext context,
    String? username,
    WidgetRef ref,
  ) async {
    await ref
        .read(signInUsingUNPasswordProvider.notifier)
        .signInUsingUNPassword(
          username: username,
          password: null,
          isGoogleAccount: true,
        );

    final result = ref.read(signInUsingUNPasswordProvider);

    if (result is AsyncData &&
        result.value?.adminID == null &&
        context.mounted) {
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      FirebaseAuthHelper.signOutUser();
      if (context.mounted) {
          context.go('/glamgear');
      }
    } else if (result is AsyncData &&
        result.value?.adminID != null &&
        context.mounted) {
      ref
          .read(dashboardBottomAppBarIndexProvider.notifier)
          .setIndex(); // to initialize the bottomNavigationBar index
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      if (context.mounted) {
        context.go('/home-b');
      }
    } else {
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      FirebaseAuthHelper.signOutUser();
      if (context.mounted) {
          context.go('/glamgear');
      }
    }
  }

  static Future<void> signIn(
    BuildContext context,
    String? username,
    WidgetRef ref,
    String? devicePlatform,
    bool? isPhysicalDevice,
    String? deviceModel,
    String? deviceVersion,
  ) async {
    final dialogUncommon = DialogUncommon();
    await ref
        .read(signInUsingUNPasswordProvider.notifier)
        .signInUsingUNPassword(
          username: username,
          password: null,
          isGoogleAccount: true,
        );

    final result = ref.read(signInUsingUNPasswordProvider);

    if (result is AsyncData &&
        result.value?.adminID == null &&
        context.mounted) {
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      dialogUncommon.showAutoDismissDialogLonger(
        context,
        'User credential cannot be found!',
        null,
        null,
      );
      FirebaseAuthHelper.signOutUser();
    } else if (result is AsyncData &&
        result.value?.adminID != null &&
        context.mounted) {
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

      if (result2 is AsyncData &&
          result2.value != 'SUCCESSFUL' &&
          context.mounted) {
        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true
        dialogUncommon.showAutoDismissDialogLonger(
          context,
          'Something went wrong. Please try again later.',
          null,
          null,
        );
        FirebaseAuthHelper.signOutUser();
      } else {
        if (context.mounted) {
          await processDevicePropertiesSignIn(
            context: context,
            ref: ref,
            username: result.value!.adminID.toString(),
            fullName: result.value!.fullName.toString(),
            adminRole: result.value!.adminRole.toString(),
            devicePlatform: devicePlatform,
            isPhysicalDevice: isPhysicalDevice,
            deviceModel: deviceModel,
            deviceVersion: deviceVersion,
          );
        }
      }
    } else {
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      if (context.mounted) {
        dialogUncommon.showAutoDismissDialogLonger(
          context,
          'User credential cannot be found!',
          null,
          null,
        );
      }
      FirebaseAuthHelper.signOutUser();
    }
  }

  static Future<void> processDevicePropertiesSignIn({
    BuildContext? context,
    WidgetRef? ref,
    String? username,
    String? fullName,
    String? adminRole,
    String? devicePlatform,
    bool? isPhysicalDevice,
    String? deviceModel,
    String? deviceVersion,
  }) async {
    final dialogCommon = DialogCommon();
    final dialogUncommon = DialogUncommon();
    await ref!
        .read(manageDevicePropertiesProvider.notifier)
        .proccessDeviceProperties(
          adminID: username,
          devicePlatform: devicePlatform,
          deviceState: isPhysicalDevice,
          deviceModel: deviceModel,
          deviceVersion: deviceVersion,
          functionKey: 'SIGN-IN',
        );

    final result = ref.read(manageDevicePropertiesProvider);

    if (result is AsyncData &&
        result.value != 'SUCCESSFUL' &&
        context!.mounted) {
      ref
          .read(checkButtonStateProvider.notifier)
          .isButtonEnabled(); // The method was set to default to true
      dialogCommon.showDialogMessageCustomizableButton(
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
      FirebaseAuthHelper.signOutUser();
    } else {
      if (context!.mounted) {
        dialogUncommon.showAutoDismissDialog(context, 'Login successfully!',
            CupertinoIcons.check_mark_circled, Colors.greenAccent);
      }

      ref
          .read(dashboardBottomAppBarIndexProvider.notifier)
          .setIndex(); // to initialize the bottomNavigationBar index
      Future.delayed(const Duration(milliseconds: 1000), () {
        ref
            .read(checkButtonStateProvider.notifier)
            .isButtonEnabled(); // The method was set to default to true
        if (context.mounted) {
          context.go('/home-b');
        }
      });
    }
  }
}
