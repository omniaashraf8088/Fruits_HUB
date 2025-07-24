part of 'router_export.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.homeScreen:
      
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());

      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
