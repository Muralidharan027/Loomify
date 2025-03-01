import 'package:flutter/material.dart';
import '../modules/auth/login_screen.dart';
import '../modules/auth/signup_screen.dart';
import '../modules/home/home_screen.dart';
import '../modules/onboarding/onboarding_screen.dart';
import '../modules/settings/settings_screen.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/onboarding': (context) => const OnboardingScreen(),
    '/login': (context) => const LoginScreen(),
    '/signup': (context) => const SignupScreen(),
    '/home': (context) => const HomeScreen(),
    '/settings': (context) => const SettingsScreen(),
  };
}
