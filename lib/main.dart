// ignore_for_file: prefer_const_constructors, unused_element

import 'package:bilkan_store/screens/home_screen.dart';
import 'package:bilkan_store/screens/login_screen.dart';
import 'package:bilkan_store/screens/register_screen.dart';
import 'package:bilkan_store/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'localizations.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => SettingsScreen(),
    ),
  ],
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String language = "en";
  bool darkMode = false;

  changeThemeMode(bool isDark) async {
    SharedPreferences memory = await SharedPreferences.getInstance();
    await memory.setBool("darkMode", isDark);
    setState(() {
      darkMode = isDark;
    });
  }

  changeLanguage(String lang) async {
    SharedPreferences memory = await SharedPreferences.getInstance();
    await memory.setString("language", lang);
    setState(() {
      language = lang;
    });
  }

  loadSettings() async {
    SharedPreferences memory = await SharedPreferences.getInstance();

    var d = memory.getBool('darkMode');
    var l = memory.getString('language');

    if (d == null) {
      changeThemeMode(false);
    } else {
      darkMode = d;
    }

    if (l == null) {
      changeLanguage('en');
    } else {
      language = l;
    }

    setState(() {});
  }

  @override
  void initState() {
    loadSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('tr', ''),
      ],
      locale: Locale(language),

      theme: ThemeData(
        brightness: darkMode ? Brightness.dark : Brightness.light,
        primarySwatch: Colors.amber,
        useMaterial3: true,
      ),

      //navigator
      /* routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
      }, */
    );
  }
}

String language = "en";
bool darkMode = false;
