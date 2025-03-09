import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ldms_mobile_app/0-services/auth.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_text.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_button.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_text_button.dart';
import 'package:ldms_mobile_app/models/customer_model/customer_model.dart';
import 'package:ldms_mobile_app/screens/main_screen.dart';
import 'package:ldms_mobile_app/screens/sign_in/sign_in.dart';
import 'package:ldms_mobile_app/screens/create_account/bloc/sign_up_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  CreateAccountState createState() => CreateAccountState();
}

class CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _locationController = TextEditingController();
  final _addressController = TextEditingController();
  final _registrationNumberController = TextEditingController();
  bool _isLoading = false;

  String? _validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full Name is required';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? _validateLocation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Location is required';
    }
    return null;
  }

  String? _validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Address is required';
    }
    return null;
  }

  // String? _validateRegistrationNumber(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Registration Number is required';
  //   }
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignUpBloc(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      const SizedBox(height: 24),
                      SvgPicture.asset(
                        "assets/icons/auth-image.svg",
                        width: 140,
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        controller: _fullNameController,
                        decoration: InputDecoration(
                          labelText: "Full Name",
                          filled: true,
                          fillColor: AppColors.textFieldFillColor,
                          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: _validateFullName,
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        controller: _locationController,
                        decoration: InputDecoration(
                          labelText: "Location",
                          filled: true,
                          fillColor: AppColors.textFieldFillColor,
                          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: _validateLocation,
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        controller: _addressController,
                        decoration: InputDecoration(
                          labelText: "Address",
                          filled: true,
                          fillColor: AppColors.textFieldFillColor,
                          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: _validateAddress,
                      ),
                      const SizedBox(height: 24),
                      CustomButton(
                        inputText: _isLoading ? "Submitting.." : "Continue",
                        backgroundColor: AppColors.customButtonColor,
                        fontColor: AppColors.customButtonFontColor,
                        onButtonPressed: () async {
                          if (_isLoading) return;

                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              _isLoading = true;
                            });

                            // Handle form submission
                            CustomerModel? customerData = await AuthService.createCustomer(
                              _fullNameController.text,
                              _addressController.text,
                              _locationController.text,
                            );

                            setState(() {
                              _isLoading = false;
                            });

                            if (customerData != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainScreen(),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Failed to create account'),
                                ),
                              );
                            }
                          }
                        },
                        borderRadius: 8,
                      ),
                      const SizedBox(height: 24),
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
                                  builder: (context) => const SignIn(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
