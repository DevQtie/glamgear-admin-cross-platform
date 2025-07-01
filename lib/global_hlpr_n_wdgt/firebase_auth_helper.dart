import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glamgear/firebase_options.dart';
import 'package:glamgear/global_hlpr_n_wdgt/signing_helper.dart';
import 'dart:developer' as developer;

import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:go_router/go_router.dart';

class FirebaseAuthHelper {
  static Future<FirebaseApp> initFirebase() async {
    //Initialize Firebase Messaging only for mobile platforms
    return await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static Future<void> setFirebaseAuthEnablePersistence() async {
    // Enable persistence on web platforms. Must be called on initialization:
    final auth = FirebaseAuth.instanceFor(app: Firebase.app());
    // To change it after initialization, use `setPersistence()`:
    await auth.setPersistence(Persistence.LOCAL);
  }

  static Future<void> setFirebaseAuthDisablePersistence() async {
    // Enable persistence on web platforms. Must be called on initialization:
    final auth = FirebaseAuth.instanceFor(app: Firebase.app());
    // To change it after initialization, use `setPersistence()`:
    await auth.setPersistence(Persistence.NONE);
  }

  static Future<void> signInWithGoogleAndShowInfo(
    BuildContext context,
    WidgetRef ref,
    String? devicePlatform,
    bool? isPhysicalDevice,
    String? deviceModel,
    String? deviceVersion,
  ) async {
    final dialogUncommon = DialogUncommon();
    try {
      // 1. Create the provider. No .addScope() is needed for basic info.
      final GoogleAuthProvider googleProvider = GoogleAuthProvider();

      // 2. Perform the sign-in.
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithPopup(googleProvider);

      // 3. Access the user object. It will be populated with the profile info.
      final User? user = userCredential.user;

      if (user != null) {
        // --- THIS IS WHERE YOU GET THE DATA ---
        final String? displayName = user.displayName;
        final String? email = user.email;
        final String? photoURL = user.photoURL;
        final String uid = user.uid;

        developer.log('Sign-in Successful!');
        developer.log('UID: $uid');
        developer.log('Display Name: $displayName');
        developer.log('Email: $email');
        developer.log('Photo URL: $photoURL');

        // Show a success message to the user
        if (context.mounted) {
          // dialogUncommon.showAutoDismissDialogLonger(
          //   context,
          //   'Welcome, $displayName!',
          //   null,
          //   null,
          // );
          await SigningHelper.signIn(context, email, ref, devicePlatform,
              isPhysicalDevice, deviceModel, deviceVersion);
        }
      }
      ref.read(checkButtonStateProvider.notifier).isButtonEnabled();
    } on FirebaseAuthException catch (e) {
      developer.log('Firebase Auth Error: ${e.message}');
      if (context.mounted) {
        dialogUncommon.showAutoDismissDialogLonger(
          context,
          'Error: ${e.message}',
          null,
          null,
        );
      }
      ref.read(checkButtonStateProvider.notifier).isButtonEnabled();
    }
  }

  static Future<void> isCurrentlyLoggedInUSer(
      BuildContext context, WidgetRef ref) async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (context.mounted) {
        if (user != null) {
          await SigningHelper.verifyAdmin(context, user.email, ref);
        } else {
          context.go('/glamgear');
        }
      }
    });
  }

  static Future<void> signOutUser() async {
    await FirebaseAuth.instance.signOut();
    await setFirebaseAuthDisablePersistence();
  }
}
