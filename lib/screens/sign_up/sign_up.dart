import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/0-services/0-core/debouncer.dart';
import 'package:ldms_mobile_app/0-services/0-core/utility_services.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/constants/place_types.dart';
import 'package:ldms_mobile_app/custom_widgets/CustomText.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_auth_icon_button.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_button.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_text_button.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_subheading_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/horizontal_line_with_text.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_icon_button.dart';
import 'package:ldms_mobile_app/custom_widgets/tab_menu_card.dart';
import 'package:ldms_mobile_app/screens/add_devices/add_devices.dart';
import 'package:ldms_mobile_app/screens/home/bloc/home_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ldms_mobile_app/screens/sign_in/sign_in.dart';
import 'package:ldms_mobile_app/screens/sign_up/bloc/sign_up_bloc.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int indexNumber = 0;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Device Details'),
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.black),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: BlocProvider(
        create: (context) => SignUpBloc(),
        child: BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Welcome to us",
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      CustomText(
                        text: "Hello there, create New account",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      SvgPicture.asset(
                        "assets/icons/auth-image.svg",
                        width: 140,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        height: 60.0,
                        child: TextFormField(
                          initialValue: "",
                          onChanged: (value) {},
                          style: const TextStyle(
                              color: AppColors.textFieldFontColor,
                              fontSize: 16),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColors.textFieldBorderColor),
                                borderRadius: BorderRadius.circular(5.5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5.5)),
                            labelText: "Username",
                            labelStyle: const TextStyle(
                                color: AppColors.textFieldLabelColor,
                                fontSize: 16),
                            filled: true,
                            fillColor: AppColors.textFieldFillColor,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        style: const TextStyle(
                            color: AppColors.textFieldFontColor, fontSize: 16),
                        obscureText: state.passwordVisibility,
                        // validator: (value) =>
                        //     state.passwordValidationResult['isValidPassword']
                        //         ? null
                        //         : state.passwordValidationResult['message'],
                        // onChanged: (password) =>
                        //     context.read<SignUpBloc>().add(SignUpPasswordChanged(password)),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: AppColors.textFieldBorderColor),
                            borderRadius: BorderRadius.circular(5.5),
                          ),
                          filled: true,
                          fillColor: AppColors.textFieldFillColor,
                          // hintText: "Password",
                          // hintStyle: const TextStyle(
                          //     color: Color(0xffffffff),
                          //     fontWeight: FontWeight.w100),
                          labelText: "Password",
                          labelStyle: const TextStyle(
                              color: AppColors.textFieldLabelColor,
                              fontSize: 16),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.5))),
                          // prefixIcon: Image.asset('assets/icons/chat.png'),
                          suffixIcon: IconButton(
                              icon: Icon(
                                color: Colors.black,
                                state.passwordVisibility == true
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                context
                                    .read<SignUpBloc>()
                                    .add(PasswordEyeButtonClicked());
                              }),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        style: const TextStyle(
                            color: AppColors.textFieldFontColor, fontSize: 16),
                        obscureText: state.passwordVisibility,
                        // validator: (value) =>
                        //     state.passwordValidationResult['isValidPassword']
                        //         ? null
                        //         : state.passwordValidationResult['message'],
                        // onChanged: (password) =>
                        //     context.read<SignUpBloc>().add(SignUpPasswordChanged(password)),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: AppColors.textFieldBorderColor),
                            borderRadius: BorderRadius.circular(5.5),
                          ),
                          filled: true,
                          fillColor: AppColors.textFieldFillColor,
                          // hintText: "Password",
                          // hintStyle: const TextStyle(
                          //     color: Color(0xffffffff),
                          //     fontWeight: FontWeight.w100),
                          labelText: "Confirm Password",
                          labelStyle: const TextStyle(
                              color: AppColors.textFieldLabelColor,
                              fontSize: 16),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.5))),
                          // prefixIcon: Image.asset('assets/icons/chat.png'),
                          suffixIcon: IconButton(
                              icon: Icon(
                                color: Colors.black,
                                state.passwordVisibility == true
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                context
                                    .read<SignUpBloc>()
                                    .add(PasswordEyeButtonClicked());
                              }),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      CustomButton(
                          inputText: "Continue",
                          backgroundColor: AppColors.customButtonColor,
                          fontColor: AppColors.customButtonFontColor,
                          onButtonPressed: () {},
                          borderRadius: 8),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CustomText(
                            text: "Already have an account? ",
                            color: const Color(0xff000000).withOpacity(0.5),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomTextButton(
                            inputText: "Sign In",
                            fontColor: const Color(0xff000000),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w800,
                            onButtonPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      const HorizontalLineWithText(
                        inputText: " or ",
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomAuthIconButton(
                            onButtonPressed: () {},
                            iconPath: 'assets/icons/google.svg',
                            height: 70,
                            borderRadius: 35,
                            padding: 18,
                            backgroundColor: Color(0xffFFFFFF),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          CustomAuthIconButton(
                            onButtonPressed: () {},
                            iconPath: 'assets/icons/apple.svg',
                            height: 70,
                            borderRadius: 35,
                            padding: 18,
                            backgroundColor: Color(0xffFFFFFF),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          CustomAuthIconButton(
                            onButtonPressed: () {},
                            iconPath: 'assets/icons/facebook.svg',
                            height: 70,
                            borderRadius: 35,
                            padding: 18,
                            backgroundColor: Color(0xffFFFFFF),
                          ),
                        ],
                      ),
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
