import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/features/home/cubit/home_cubit.dart';
import 'package:circle_sync/features/home/ui/home_screen.dart';
import 'package:circle_sync/features/login/logic/cubit/login_cubit.dart';
import 'package:circle_sync/features/login/ui/login_screen.dart';
import 'package:circle_sync/features/on_boarding/UI/on_boarding_2.dart';
import 'package:circle_sync/features/on_boarding/UI/on_boarding_1.dart';
import 'package:circle_sync/features/on_boarding/UI/on_boarding_3.dart';
import 'package:circle_sync/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:circle_sync/features/signup/ui/signup_screen.dart';
import 'package:circle_sync/features/signup/ui/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding1:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen1(),
        );
        case Routes.onBoarding2:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen2(),
        );
        case Routes.onBoarding3:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen3(),
        );
        case Routes.welcome:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.home:
       return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeScreen(),
          ),
        );
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
}
