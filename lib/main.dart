import 'package:flutter/material.dart';
import 'package:thesis_desktop_app/screens/coin_screen.dart';
import 'package:thesis_desktop_app/screens/home_screen.dart';
import 'package:thesis_desktop_app/screens/user_profile.dart';

import 'screens/splash_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/landing",
      routes: {
        "/landing": (context) => SplashScreen(),
        "/home": (context) => HomeScreen(),
        "/profile": (context) => UserProfile(),
        "/coin/home": (context) => CoinScreen()
      },
      title: 'myThesis',
      theme: AppTheme.theme,
      home: const SplashScreen(),
    );
  }
}
