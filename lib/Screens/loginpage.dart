// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:school_app/Constants/constants.dart';
import 'package:school_app/Validators/textformfield_validation.dart';
import 'package:school_app/Widgets/rounded_button_widget.dart';
import 'package:school_app/Widgets/textformfield_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _studentIDController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          // padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 16.0),
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: kPrimaryLightColor,
                              width: 1.0,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 20.0,
                            color: kSecondaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.06),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: size.width * 0.26,
                            child: Image.asset(
                              "assets/images/school.png",
                              fit: BoxFit.cover,
                              // scale: 6.0,
                            ),
                          ),
                          SizedBox(height: size.height * 0.016),
                          const Text(
                            "Little Star Play School",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: kSecondaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: size.height * 0.016),
                          const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: kSecondaryLightColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.040),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormFieldWidget(
                            controller: _studentIDController,
                            label: "Student ID",
                            labelColor: kPrimaryColor,
                            borderColor: kPrimaryLightColor,
                            bgColor: kPrimaryUltraLightColor.withOpacity(0.6),
                            validator: TextFieldValidation.studentIDValidation,
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                          SizedBox(height: size.height * 0.012),
                          TextFormFieldWidget(
                            controller: _passwordController,
                            label: "Password",
                            labelColor: kPrimaryColor,
                            borderColor: kPrimaryLightColor,
                            bgColor: kPrimaryUltraLightColor.withOpacity(0.6),
                            validator: TextFieldValidation.passwordValidation,
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                          SizedBox(height: size.height * 0.016),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                log("Forgot password?");
                              },
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                  color: kPrimaryColor.withAlpha(200),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.016),
                          RoundedButtonWidget(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print("Success");
                              } else {
                                print("Error");
                              }
                            },
                            label: "Login",
                            bgColor: kPrimaryColor,
                            labelColor: Colors.white,
                          ),
                        ],
                      ),
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
