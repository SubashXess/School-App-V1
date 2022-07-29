// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:school_app/Constants/constants.dart';
import 'package:school_app/Validators/textformfield_validation.dart';
import 'package:school_app/Widgets/rounded_button_widget.dart';
import 'package:school_app/Widgets/textformfield_widget.dart';

class SchoolIDPage extends StatefulWidget {
  const SchoolIDPage({Key? key}) : super(key: key);

  @override
  State<SchoolIDPage> createState() => _SchoolIDPageState();
}

class _SchoolIDPageState extends State<SchoolIDPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _schoolIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          // color: Color.fromARGB(255, 237, 237, 255),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "School ID",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: fontSizeLarge,
                      fontWeight: FontWeight.bold,
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
                  SizedBox(height: size.height * 0.04),
                  Column(
                    children: [
                      TextFormFieldWidget(
                        controller: _schoolIDController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        label: "School ID",
                        labelColor: kPrimaryColor.withAlpha(160),
                        borderColor: kPrimaryUltraLightColor,
                        bgColor: kPrimaryUltraLightColor,
                        validator: TextFieldValidation.studentIDValidation,
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                      SizedBox(height: size.height * 0.026),
                      RoundedButtonWidget(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.of(context).pushNamed('/login_page');
                          } else {
                            log("Error");
                          }
                        },
                        label: "Find your school",
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
    );
  }
}
