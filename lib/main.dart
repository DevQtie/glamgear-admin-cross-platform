import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:glamgear/bloc_observer/app_bloc_obsrvr.dart';
import 'package:glamgear/firebase_options.dart';
import 'package:glamgear/generated/l10n.dart';
import 'dart:developer' as developer;
import 'package:flutter/foundation.dart' show BindingBase, kIsWeb;
import 'package:glamgear/global_hlpr_n_wdgt/firebase_auth_helper.dart';
import 'package:glamgear/internal/animations/route_trnstions.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  // Set path-based routing (removes the `/#`)
  setUrlStrategy(PathUrlStrategy());
  runZonedGuarded(
    () async {
      // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized(); // cannot be evaluated yet if it's correct
      // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      WidgetsFlutterBinding.ensureInitialized();
      Bloc.observer = const AppBlocObserver();
      await dotenv.load(fileName: "assets/.env"); // Load the .env file
      BindingBase.debugZoneErrorsAreFatal = true;
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      //Initialize Firebase Messaging only for mobile platforms
      await FirebaseAuthHelper.initFirebase();

      // Enable persistence on web platforms. Must be called on initialization:
      await FirebaseAuthHelper.setFirebaseAuthEnablePersistence();

      runApp(
        ProviderScope(
          overrides: [_sharedPreferences.overrideWithValue(prefs)],
          child: MyApp(),
        ),
      );
    },
    (error, stackTrace) {
      developer.log(
        'Uncaught exception: $error',
        error: error,
        stackTrace: stackTrace,
      );
      // Implement custom logging or reporting here
    },
  );
}

final _sharedPreferences = Provider<SharedPreferences>(
  (_) => throw UnimplementedError(),
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    RouteTransitions routeTransitions = RouteTransitions();
    return Directionality(
      textDirection: TextDirection.ltr, // Set the direction to LTR
      child: MaterialApp.router(
        themeMode: ThemeMode.system, // Follow system theme
        theme: _lightTheme, //ThemeData.light(), // Light theme
        darkTheme: _darkTheme, //ThemeData.dark(), // Dark theme
        routerConfig: routeTransitions.router,
        // routeInformationParser: routeTransitions.router.routeInformationParser,
        // routerDelegate: routeTransitions.router.routerDelegate,
        title: 'GlamGear',
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          FlutterQuillLocalizations.delegate,
        ],
        locale: const Locale('en', 'PH'), // Set locale to Philippines
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

@immutable
class CustomTheme extends ThemeExtension<CustomTheme> {
  final Color containerBackgroundColor;

  const CustomTheme({required this.containerBackgroundColor});

  @override
  CustomTheme copyWith({Color? containerBackgroundColor}) {
    return CustomTheme(
      containerBackgroundColor:
          containerBackgroundColor ?? this.containerBackgroundColor,
    );
  }

  @override
  CustomTheme lerp(ThemeExtension<CustomTheme>? other, double t) {
    if (other is! CustomTheme) return this;
    return CustomTheme(
      containerBackgroundColor: Color.lerp(
        containerBackgroundColor,
        other.containerBackgroundColor,
        t,
      )!,
    );
  }

  static CustomTheme light = CustomTheme(
    containerBackgroundColor: Colors.grey.shade100,
  );
  static CustomTheme dark = CustomTheme(
    containerBackgroundColor: Colors.grey.shade800.withValues(alpha: 0.45),
  );
}

final ThemeData _lightTheme = ThemeData(
  fontFamily: 'open-sans',
  fontFamilyFallback: const [
    'lato',
    'montserrat',
    'roboto-condensed',
    'noto-sans',
    'merriweather',
  ], // include peso symbol
  useMaterial3: true,
  primaryColor: Colors.lightBlue,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade400.withValues(alpha: 0.35),
    primary: Colors.lightBlue,
    secondary: Colors.amber,
  ),
  scaffoldBackgroundColor: Colors.grey.shade100,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade300,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white70),
    titleTextStyle: const TextStyle(
      color: Colors.white70,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
  ),
  textTheme: TextTheme(
    labelLarge: const TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    labelMedium: const TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    labelSmall: const TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    displayLarge: const TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    displayMedium: const TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    displaySmall: const TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    bodyLarge: TextStyle(
      color: Colors.grey.shade100,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    bodyMedium: TextStyle(
      color: Colors.black87.withAlpha(200),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    bodySmall: TextStyle(
      color: Colors.black87.withValues(alpha: 0.6),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    headlineLarge: const TextStyle(
      color: Color.fromARGB(200, 0, 0, 0),
      // fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    headlineSmall: const TextStyle(
      color: Color.fromARGB(190, 0, 0, 0),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    titleLarge: const TextStyle(
      color: Color.fromARGB(200, 0, 0, 0),
      // fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    titleMedium: const TextStyle(
      color: Color.fromARGB(200, 0, 0, 0),
      // fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    titleSmall: const TextStyle(
      color: Color.fromARGB(200, 0, 0, 0),
      // fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.lightBlue,
      foregroundColor: Colors.white70,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.lightBlue),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.lightBlue),
      borderRadius: BorderRadius.circular(4),
    ),
    labelStyle: const TextStyle(
      color: Color.fromARGB(200, 0, 0, 0),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    hintStyle: const TextStyle(
      color: Colors.black38,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    prefixIconColor: Colors.black54,
    suffixIconColor: Colors.black54,
    filled: true,
    fillColor: Colors.white70,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.lightBlue,
    foregroundColor: Colors.white70,
  ),
  iconTheme: const IconThemeData(color: Colors.black54),
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll<Color>(Color.fromARGB(200, 0, 0, 0)),
      backgroundColor: WidgetStatePropertyAll<Color>(Colors.transparent),
      foregroundColor: WidgetStatePropertyAll<Color>(
        Color.fromARGB(200, 0, 0, 0),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll(Colors.black54),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      ),
      textStyle: WidgetStatePropertyAll(TextStyle()),
      side: WidgetStatePropertyAll(BorderSide(color: Colors.lightBlue)),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    side: const BorderSide(color: Colors.lightBlue),
    checkColor: WidgetStatePropertyAll<Color>(Colors.grey.shade100),
    overlayColor: const WidgetStatePropertyAll<Color>(Colors.lightBlue),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    menuStyle: MenuStyle(
      backgroundColor: WidgetStatePropertyAll<Color>(Colors.grey.shade300),
    ),
    textStyle: const TextStyle(
      color: Color.fromARGB(200, 0, 0, 0),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
  ),
  snackBarTheme: SnackBarThemeData(backgroundColor: Colors.grey.shade100),
  bottomAppBarTheme: BottomAppBarTheme(color: Colors.grey.shade100),
  bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.grey.shade100),
  unselectedWidgetColor: Colors.grey.shade400.withValues(alpha: 0.75),
  extensions: [CustomTheme.light], // Include custom theme extension
);

final ThemeData _darkTheme = ThemeData(
  fontFamily: 'open-sans',
  fontFamilyFallback: const [
    'lato',
    'montserrat',
    'roboto-condensed',
    'noto-sans',
    'merriweather',
  ], // include peso symbol
  useMaterial3: true,
  primaryColor: const Color.fromARGB(190, 255, 193, 7),
  colorScheme: const ColorScheme.dark(
    surface: Color.fromARGB(35, 0, 0, 0),
    primary: Color.fromARGB(190, 255, 193, 7),
    secondary: Color.fromARGB(190, 255, 193, 7),
  ),
  scaffoldBackgroundColor: Colors.grey[900],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[850],
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.grey.shade100),
    titleTextStyle: TextStyle(
      color: Colors.grey.shade100,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
  ),
  textTheme: TextTheme(
    labelLarge: TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    labelMedium: TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    labelSmall: TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    displayLarge: TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    displayMedium: TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    displaySmall: TextStyle(
      color: Colors.black12,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    bodyLarge: TextStyle(
      color: Colors.grey.shade100,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    bodyMedium: TextStyle(
      color: Color.fromARGB(235, 255, 255, 255),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    bodySmall: TextStyle(
      color: Color.fromARGB(215, 255, 255, 255),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    headlineLarge: TextStyle(
      color: Color.fromARGB(215, 255, 255, 255),
      // fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    headlineMedium: TextStyle(
      color: Color.fromARGB(215, 255, 255, 255),
      // fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    headlineSmall: TextStyle(
      color: Color.fromARGB(235, 255, 255, 255),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    titleLarge: TextStyle(
      color: Color.fromARGB(215, 255, 255, 255),
      // fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    titleMedium: TextStyle(
      color: Color.fromARGB(215, 255, 255, 255),
      // fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    titleSmall: TextStyle(
      color: Color.fromARGB(215, 255, 255, 255),
      // fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(190, 255, 193, 7),
      foregroundColor: Colors.grey.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color.fromARGB(190, 255, 193, 7)),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color.fromARGB(190, 255, 193, 7)),
      borderRadius: BorderRadius.circular(4),
    ),
    hintStyle: const TextStyle(
      color: Color.fromARGB(215, 255, 255, 255),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    labelStyle: const TextStyle(
      color: Color.fromARGB(215, 255, 255, 255),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
    prefixIconColor: const Color.fromARGB(100, 255, 255, 255),
    suffixIconColor: const Color.fromARGB(100, 255, 255, 255),
    filled: true,
    fillColor: Colors.grey.shade800.withValues(alpha: 0.75),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: const Color.fromARGB(190, 255, 193, 7),
    foregroundColor: Colors.grey.shade100,
  ),
  iconTheme: IconThemeData(color: Colors.grey.shade100),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll<Color>(Colors.grey.shade100),
      backgroundColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
      foregroundColor: WidgetStatePropertyAll<Color>(Colors.grey.shade100),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll(Colors.grey.shade100),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      ),
      side: WidgetStatePropertyAll(
        BorderSide(color: Color.fromARGB(190, 255, 193, 7)),
      ),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    side: const BorderSide(color: Color.fromARGB(190, 255, 193, 7)),
    checkColor: WidgetStatePropertyAll<Color>(Colors.grey.shade100),
    overlayColor: const WidgetStatePropertyAll<Color>(
      Color.fromARGB(190, 255, 193, 7),
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    menuStyle: MenuStyle(
      backgroundColor: WidgetStatePropertyAll<Color>(Colors.grey.shade900),
    ),
    textStyle: const TextStyle(
      color: Color.fromARGB(215, 255, 255, 255),
      letterSpacing: 0.0, //letterSpacing: 0.75,
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: Colors.grey.shade800.withValues(alpha: 0.45),
  ),
  // navigationBarTheme: const NavigationBarThemeData(
  //     labelTextStyle: TextStyle(color: Color.fromARGB(215, 255, 255, 255),
  //letterSpacing: 0.0, //letterSpacing: 0.75,)),
  bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.grey[900]),
  unselectedWidgetColor: Colors.grey.shade700,
  extensions: [CustomTheme.dark], // Include custom theme extension
);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
} //original startup template upon creation of Flutter Application
