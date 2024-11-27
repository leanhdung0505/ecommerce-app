import '../screens/home_screen/home_screen.dart';
import '../screens/get_started_screen/get_started_screen.dart';
import '../screens/onboarding_screen/onboarding_screen.dart';
import '../screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import '../screens/auth/sign_in_screen.dart';
import '../screens/auth/sign_up_screen.dart';
import '../screens/auth/forgot_password_screen.dart';

class AppRoute {
  static const String signIn = '/sign_in_screen';
  static const String signUp = '/sign_up_screen';
  static const String forgotPassword = "/forgot_password_screen";
  static const String onboarding = "/onboarding_screen";
  static const String splashScreen = '/splash_screen';
  static const String getStartedScreen = '/get_started_screen';
  static const String homeScreen = '/home_screen';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case getStartedScreen:
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void replaceWith(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }
}
