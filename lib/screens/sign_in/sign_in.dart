import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ldms_mobile_app/0-services/auth.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_text.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_auth_icon_button.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_button.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_text_button.dart';
import 'package:ldms_mobile_app/custom_widgets/horizontal_line_with_text.dart';
import 'package:ldms_mobile_app/models/customer_model/customer_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ldms_mobile_app/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:ldms_mobile_app/screens/create_account/create_account.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<void> signInWithGoogle() async {
    try {
      const List<String> scopes = <String>[
        'email',
        // 'https://www.googleapis.com/auth/contacts.readonly',
      ];

      final GoogleSignInAccount? googleUser = await GoogleSignIn(scopes: scopes).signIn();
      if (googleUser != null) {
        // Handle successful sign-in
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        final String? idToken = googleAuth.idToken;

        print('Google user signed in: ${googleUser.displayName}');

        if (idToken == null) {
          print("Failed to get ID Token");
          return;
        }

        CustomerModel? details = await AuthService.signInWithGoogleServer(idToken);
        if (!mounted) return; // Ensure the widget is still mounted before navigating

        if (details == null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateAccount(),
            ),
          );
        } else {
          Navigator.pushReplacementNamed(context, '/home');
        }
      }
    } catch (error) {
      print('Google sign-in failed: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignInBloc(),
        child: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 2,
                      ),
                      Column(
                        children: [
                          const CustomText(
                            text: "Welcome to us",
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          const CustomText(
                            text: "Hello there, create New account",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          SvgPicture.asset(
                            "assets/icons/auth-image.svg",
                            width: 140,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 60.0,
                            child: TextFormField(
                              initialValue: "",
                              onChanged: (value) {},
                              style: const TextStyle(color: AppColors.textFieldFontColor, fontSize: 16),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
                                    borderRadius: BorderRadius.circular(5.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none, borderRadius: BorderRadius.circular(5.5)),
                                labelText: "Username",
                                labelStyle: const TextStyle(color: AppColors.textFieldLabelColor, fontSize: 16),
                                filled: true,
                                fillColor: AppColors.textFieldFillColor,
                                contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            style: const TextStyle(color: AppColors.textFieldFontColor, fontSize: 16),
                            obscureText: state.passwordVisibility,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 1, color: AppColors.textFieldBorderColor),
                                borderRadius: BorderRadius.circular(5.5),
                              ),
                              filled: true,
                              fillColor: AppColors.textFieldFillColor,
                              labelText: "Password",
                              labelStyle: const TextStyle(color: AppColors.textFieldLabelColor, fontSize: 16),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(5.5))),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    color: Colors.black,
                                    state.passwordVisibility == true ? Icons.visibility_off : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    context.read<SignInBloc>().add(PasswordEyeButtonClicked());
                                  }),
                              contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                            ),
                          ),
                          const SizedBox(height: 24),
                          CustomButton(
                              inputText: "Continue",
                              backgroundColor: AppColors.customButtonColor,
                              fontColor: AppColors.customButtonFontColor,
                              onButtonPressed: () {},
                              borderRadius: 8),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CustomText(
                                text: "Don't have an account ? ",
                                color: const Color(0xff000000).withOpacity(0.5),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                              // CustomTextButton(
                              //   inputText: "Create Account",
                              //   fontColor: const Color(0xff000000),
                              //   fontSize: 14.0,
                              //   fontWeight: FontWeight.w800,
                              //   onButtonPressed: () {
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => const SignUp(),
                              //       ),
                              //     );
                              //   },
                              // ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          const HorizontalLineWithText(
                            inputText: " or ",
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomAuthIconButton(
                                onButtonPressed: () {
                                  signInWithGoogle();
                                },
                                iconPath: 'assets/icons/google.svg',
                                height: 70,
                                borderRadius: 35,
                                padding: 18,
                                backgroundColor: const Color(0xffFFFFFF),
                              ),
                              const SizedBox(width: 16),
                              CustomAuthIconButton(
                                onButtonPressed: () {},
                                iconPath: 'assets/icons/apple.svg',
                                height: 70,
                                borderRadius: 35,
                                padding: 18,
                                backgroundColor: const Color(0xffFFFFFF),
                              ),
                              const SizedBox(width: 16),
                              CustomAuthIconButton(
                                onButtonPressed: () {},
                                iconPath: 'assets/icons/facebook.svg',
                                height: 70,
                                borderRadius: 35,
                                padding: 18,
                                backgroundColor: const Color(0xffFFFFFF),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
