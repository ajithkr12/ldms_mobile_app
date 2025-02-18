import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/1-domain/authentication/bloc/authentication_bloc.dart';
import 'package:ldms_mobile_app/screens/main_screen.dart';
import 'package:ldms_mobile_app/screens/sign_in/sign_in.dart';
import 'screens/splash/splash.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;
  @override
  // void initState() {
  //   super.initState();

  //   // Simulating user login for testing
  //   Future.delayed(const Duration(seconds: 4), () {
  //     context.read<AuthenticationBloc>().add(UserLoggedIn());
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // navigatorKey: _navigatorKey,
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: const Color(0xffEDF1FB),
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
          ),
        ),
        // builder: (context, child) {
        //   return BlocListener<AuthenticationBloc, AuthenticationState>(
        //     listener: (context, state) {
        //       if (state is AuthenticationSuccess) {
        //         const pageNumber = 0;
        //         _navigator.pushAndRemoveUntil(
        //           MainScreen.route(pageNumber),
        //           (route) => false,
        //         );
        //       } else if (state is AuthenticationFailure) {
        //         _navigator.pushAndRemoveUntil(
        //           SplashPage.route(),
        //           (route) => false,
        //         );
        //       }
        //     },
        //     child: child ?? const SizedBox(), // Prevents null child
        //   );
        // },
        home: MainScreen(),
        // home: SignIn(),
        // onGenerateRoute: (_) => SplashPage.route(),
      ),
    );
  }
}
