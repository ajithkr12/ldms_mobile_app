# Googla Auth For IOS

Reference : https://pub.dev/packages/google_sign_in_ios#ios-integration

Go to

https://console.cloud.google.com/

## create a new project

search for oAuth Consent screen

fill all the fields

choose audience as all

## Create Client

go to clients

![alt text](<Screenshot 2025-03-01 at 1.01.37 PM.png>)

click create client

![alt text](<Screenshot 2025-03-01 at 1.04.20 PM.png>)

choose ios for ios

open ios plist copy the bundle id of your app
paste it in the bundle id

click create

now the ios client is created.

![alt text](<Screenshot 2025-03-01 at 1.05.11 PM.png>)

now on right of the list there is a download button .
download it and open in vs code

![alt text](<Screenshot 2025-03-01 at 1.06.45 PM.png>)

## Publish

after doing this
click on audience from the dashboard
and under bublishing status click on the button publish app

## Add it to info.plist

now open your apps info.plist
this is how your p list look like

```plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleDevelopmentRegion</key>
	<string>$(DEVELOPMENT_LANGUAGE)</string>
	<key>CFBundleDisplayName</key>
	<string>Ldms Mobile App</string>
	<key>CFBundleExecutable</key>
	<string>$(EXECUTABLE_NAME)</string>
	<key>CFBundleIdentifier</key>
	<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>CFBundleName</key>
	<string>ldms_mobile_app</string>
	<key>CFBundlePackageType</key>
	<string>APPL</string>
	<key>CFBundleShortVersionString</key>
	<string>$(FLUTTER_BUILD_NAME)</string>
	<key>CFBundleSignature</key>
	<string>????</string>
	<key>CFBundleVersion</key>
	<string>$(FLUTTER_BUILD_NUMBER)</string>
	<key>LSRequiresIPhoneOS</key>
	<true/>
	<key>UILaunchStoryboardName</key>
	<string>LaunchScreen</string>
	<key>UIMainStoryboardFile</key>
	<string>Main</string>


	<key>UISupportedInterfaceOrientations</key>
	<array>
		<string>UIInterfaceOrientationPortrait</string>
		<string>UIInterfaceOrientationLandscapeLeft</string>
		<string>UIInterfaceOrientationLandscapeRight</string>
	</array>
	<key>UISupportedInterfaceOrientations~ipad</key>
	<array>
		<string>UIInterfaceOrientationPortrait</string>
		<string>UIInterfaceOrientationPortraitUpsideDown</string>
		<string>UIInterfaceOrientationLandscapeLeft</string>
		<string>UIInterfaceOrientationLandscapeRight</string>
	</array>
	<key>CADisableMinimumFrameDurationOnPhone</key>
	<true/>
	<key>UIApplicationSupportsIndirectInputEvents</key>
	<true/>
</dict>
</plist>

```

add the details from the downloaded plist to your apps plist

first add this

```plist
<key>GIDClientID</key>
    <!-- TODO Replace this value: -->
    <!-- Copied from GoogleService-Info.plist key CLIENT_ID -->
<string>[YOUR IOS CLIENT ID]</string>
```

next add below

```plist
<!-- Put me in the [my_project]/ios/Runner/Info.plist file -->
<!-- Google Sign-in Section -->
<key>CFBundleURLTypes</key>
<array>
	<dict>
		<key>CFBundleTypeRole</key>
		<string>Editor</string>
		<key>CFBundleURLSchemes</key>
		<array>
			<!-- TODO Replace this value: -->
			<!-- Copied from GoogleService-Info.plist key REVERSED_CLIENT_ID -->
			<string> [ REVERSED_CLIENT_ID ]</string>
		</array>
	</dict>
</array>
<!-- End of the Google Sign-in Section -->
```

the final plist will look like

```plist

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleDevelopmentRegion</key>
	<string>$(DEVELOPMENT_LANGUAGE)</string>
	<key>CFBundleDisplayName</key>
	<string>Ldms Mobile App</string>
	<key>CFBundleExecutable</key>
	<string>$(EXECUTABLE_NAME)</string>
	<key>CFBundleIdentifier</key>
	<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>CFBundleName</key>
	<string>ldms_mobile_app</string>
	<key>CFBundlePackageType</key>
	<string>APPL</string>
	<key>CFBundleShortVersionString</key>
	<string>$(FLUTTER_BUILD_NAME)</string>
	<key>CFBundleSignature</key>
	<string>????</string>
	<key>CFBundleVersion</key>
	<string>$(FLUTTER_BUILD_NUMBER)</string>
	<key>LSRequiresIPhoneOS</key>
	<true/>
	<key>UILaunchStoryboardName</key>
	<string>LaunchScreen</string>
	<key>UIMainStoryboardFile</key>
	<string>Main</string>

	<key>GIDClientID</key>
	<string>753690266421-igo69o7d4mns24p538a0qo5m52rq9ch2.apps.googleusercontent.com</string>
	<!-- Put me in the [my_project]/ios/Runner/Info.plist file -->
	<!-- Google Sign-in Section -->
	<key>CFBundleURLTypes</key>
	<array>
		<dict>
			<key>CFBundleTypeRole</key>
			<string>Editor</string>
			<key>CFBundleURLSchemes</key>
			<array>
				<!-- TODO Replace this value: -->
				<!-- Copied from GoogleService-Info.plist key REVERSED_CLIENT_ID -->
				<!-- <string>com.googleusercontent.apps.861823949799-vc35cprkp249096uujjn0vvnmcvjppkn</string> -->
				<string>com.googleusercontent.apps.753690266421-igo69o7d4mns24p538a0qo5m52rq9ch2</string>
			</array>
		</dict>
	</array>
	<!-- End of the Google Sign-in Section -->



	<key>UISupportedInterfaceOrientations</key>
	<array>
		<string>UIInterfaceOrientationPortrait</string>
		<string>UIInterfaceOrientationLandscapeLeft</string>
		<string>UIInterfaceOrientationLandscapeRight</string>
	</array>
	<key>UISupportedInterfaceOrientations~ipad</key>
	<array>
		<string>UIInterfaceOrientationPortrait</string>
		<string>UIInterfaceOrientationPortraitUpsideDown</string>
		<string>UIInterfaceOrientationLandscapeLeft</string>
		<string>UIInterfaceOrientationLandscapeRight</string>
	</array>
	<key>CADisableMinimumFrameDurationOnPhone</key>
	<true/>
	<key>UIApplicationSupportsIndirectInputEvents</key>
	<true/>
</dict>
</plist>


```

now check signing in with google in your app

your apps signin page will be like this

```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
import 'package:ldms_mobile_app/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:ldms_mobile_app/screens/sign_up/sign_up.dart';

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
        'https://www.googleapis.com/auth/contacts.readonly',
      ];

      final GoogleSignInAccount? googleUser = await GoogleSignIn(scopes: scopes).signIn();
      if (googleUser != null) {
        // Handle successful sign-in
        print('Google user signed in: ${googleUser.displayName}');
      }
    } catch (error) {
      print('Google sign-in failed: $error');
    }
  }

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
                      Container(
                        child: Column(
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
                      ),
                      Container(
                        child: Column(
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
                              // validator: (value) =>
                              //     state.passwordValidationResult['isValidPassword']
                              //         ? null
                              //         : state.passwordValidationResult['message'],
                              // onChanged: (password) =>
                              //     context.read<SignInBloc>().add(SignInPasswordChanged(password)),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 1, color: AppColors.textFieldBorderColor),
                                  borderRadius: BorderRadius.circular(5.5),
                                ),
                                filled: true,
                                fillColor: AppColors.textFieldFillColor,
                                // hintText: "Password",
                                // hintStyle: const TextStyle(
                                //     color: Color(0xffffffff),
                                //     fontWeight: FontWeight.w100),
                                labelText: "Password",
                                labelStyle: const TextStyle(color: AppColors.textFieldLabelColor, fontSize: 16),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(5.5))),
                                // prefixIcon: Image.asset('assets/icons/chat.png'),
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
                      ),
                      Container(
                        child: Column(
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
                                CustomTextButton(
                                  inputText: "Create Account",
                                  fontColor: const Color(0xff000000),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w800,
                                  onButtonPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUp(),
                                      ),
                                    );
                                  },
                                ),
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

```
