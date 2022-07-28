import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_app/Constants/constants.dart';
import 'package:school_app/Widgets/rounded_button_widget.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.deepPurple[100],
        child: Stack(
          fit: StackFit.loose,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    Colors.deepPurple[200]!,
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: const [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    // color: Colors.red,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 12.0),
                    child: const Text(
                      "School App",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSizeLarge,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(
                    // color: Colors.blue,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/partying.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: size.height * 0.4,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 12.0),
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Discover your next skill Learn anything you want!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: kSecondaryColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            const Text(
                              "Discover the things you want to learn and grow with them",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: kSecondaryLightColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height * 0.05),
                            SizedBox(
                              width: size.width / 2.56,
                              child: RoundedButtonWidget(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed('/school_id_page');
                                },
                                label: "Get Started",
                                bgColor: kPrimaryColor,
                                labelColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
