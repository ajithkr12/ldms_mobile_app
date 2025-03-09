import 'package:flutter/material.dart';
import 'package:ldms_mobile_app/0-services/auth.dart';
import 'package:ldms_mobile_app/0-services/token_storage_services.dart';
import 'package:ldms_mobile_app/screens/main_screen.dart';
import 'package:ldms_mobile_app/screens/sign_in/sign_in.dart';
import 'package:ldms_mobile_app/screens/create_account/create_account.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkToken();
  }

  Future<void> _checkToken() async {
    final token = await TokenStorageService.getToken();

    if (token != null) {
      // Token Exists - Check if user exists
      var userDetails = await AuthService.getUserWithTokenId();
      if (userDetails == null) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const CreateAccount()),
          (route) => false,
        );
      } else {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()),
          (route) => false,
        );
      }
    } else {
      // token does not exist - go to sign in
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const SignIn()),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logos/app_logo.png',
          width: 200,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
