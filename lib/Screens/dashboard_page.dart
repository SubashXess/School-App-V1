import 'package:flutter/material.dart';
import 'package:school_app/Constants/constants.dart';
import 'package:school_app/Widgets/rounded_button_widget.dart';
import 'package:school_app/Widgets/text_button_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        // color: kPrimaryColor,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.deepPurple[50]!,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.loose,
          children: [
            SafeArea(
              child: Container(
                width: double.infinity,
                // height: 200,
                // color: Colors.blue,
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width * 0.6,
                          // color: Colors.deepPurple[600],
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Jack Patrick Dorsey",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: size.height * 0.014),
                              const Text(
                                "Class X-II A",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: size.height * 0.008),
                              const Text(
                                "Roll No: 12",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              // TextButtonWidget(),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 2.8, color: kPrimaryUltraLightColor),
                            color: Colors.red,
                            image: const DecorationImage(
                              image: AssetImage('assets/images/profile-1.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 4,
                                spreadRadius: 2.0,
                                offset: Offset(0.0, 2.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: size.height * 0.045),
                    Divider(color: Colors.white54, height: size.height * 0.032),
                    SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              color: Colors.white,
                              margin: EdgeInsets.zero,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Attendance',
                                      style: TextStyle(
                                        color: kSecondaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.012),
                                    const Text(
                                      '90.02%',
                                      style: TextStyle(
                                        color: kSecondaryLightColor,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Card(
                              color: Colors.white,
                              margin: EdgeInsets.zero,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Fees Due',
                                      style: TextStyle(
                                        color: kSecondaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.012),
                                    const Text(
                                      '12,000',
                                      style: TextStyle(
                                        color: kSecondaryLightColor,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
              expand: true,
              initialChildSize: 0.66,
              minChildSize: 0.66,
              maxChildSize: 0.66,
              snap: true,
              builder: (context, scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2.0,
                        blurRadius: 6.0,
                        color: Colors.black38,
                        offset: Offset(2.0, 0.0),
                      ),
                    ],
                  ),
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.zero,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(12.0))),
                    child: GridView.builder(
                      itemCount: _tilesLabel.length,
                      shrinkWrap: true,
                      controller: scrollController,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        childAspectRatio: 10 / 8,
                      ),
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.deepPurple[200]!,
                                  Colors.deepPurple[50]!,
                                ],
                                begin: const FractionalOffset(1.0, 0.0),
                                end: const FractionalOffset(0.0, 1.0),
                                stops: const [0.0, 1.0],
                                tileMode: TileMode.clamp,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.home, size: 46.0),
                                SizedBox(height: size.height * 0.006),
                                Text(
                                  _tilesLabel[index],
                                  style: const TextStyle(
                                    color: kSecondaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  final _tilesLabel = [
    'Take Quiz',
    'Assignments',
    'Holidays',
    'Time Table',
    'Result',
    'Data Sheet'
  ];
}
