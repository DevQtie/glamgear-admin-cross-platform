# App Name History

Raquel GlamGear (GlamGear) Admin Web App

# Important Note:

* using `flutter run`, use flutter run -d chrome --web-port=1000 instead to connect to API
* Shorebird is not applicable to use here because the source code of the existing shorebird patch is for mobile platform only.

# Changelog

## 1.2.0+1-alpha

* Implementing semver specification in pubspec.yaml's version.
* Integrated with the GlamGear business-logic.
* Google authentication using Firebase.
* Use of cookies, sessionStorage, and shared_preferences is discontinued in the meantime.
* firebase_auth: ^5.6.0 added.
* firebase_core: ^1.19.0 to firebase_core: ^3.14.0.
* firebase for web created named glamgear-web-admin.
* .env new port modification to avoid conflict access with the API for mobile app.
* web.config configurations modification for URL address request fixes.

## 1.1.0+1-alpha

* Integrated with Flutter Version Management (FVM).
* Currently using Flutter 3.29.0 • Dart 3.7.0 • DevTools 2.42.2.
* Sign in using GlamGear ID (company email in the meantime) and password.
* First phase implementation of `html.window.document.cookie`.

## 1.0.0+1-alpha

* Initial admin web app structure.
* Customized dashboard with manageable side menu with sub menu as well.