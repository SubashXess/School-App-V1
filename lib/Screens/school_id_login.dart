import 'package:flutter/material.dart';
import 'package:school_app/Constants/constants.dart';
import 'package:school_app/Widgets/rounded_button_widget.dart';
import 'package:school_app/Widgets/textformfield_widget.dart';

class SchoolIDPage extends StatefulWidget {
  const SchoolIDPage({Key? key}) : super(key: key);

  @override
  State<SchoolIDPage> createState() => _SchoolIDPageState();
}

class _SchoolIDPageState extends State<SchoolIDPage> {
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
            child: Column(
              children: [
                const Text("ID Page"),
                Column(
                  children: [
                    TextFormFieldWidget(
                      controller: _schoolIDController,
                      label: "School ID",
                      labelColor: kPrimaryColor,
                      borderColor: kPrimaryLightColor,
                      bgColor: kPrimaryUltraLightColor.withOpacity(0.6),
                    ),
                    SizedBox(height: size.height * 0.026),
                    RoundedButtonWidget(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/login_page'),
                      label: "Find your school",
                      bgColor: kPrimaryColor,
                      labelColor: Colors.white,
                    ),
                  ],
                ),
                MaterialButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/login_page'),
                  child: const Text("Next Page"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
