import 'package:flutter/material.dart';

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
        color: Colors.deepPurple[200],
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                // Container(
                //   width: size.width,
                //   color: Colors.blue[200],
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: const [
                // Container(
                //   color: Colors.amber[200],
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       // Text(
                //       //   "Try using Expanded widget with flex",
                //       //   style: TextStyle(
                //       //     fontSize: 24.0,
                //       //     fontWeight: FontWeight.w600,
                //       //     color: Colors.white,
                //       //   ),
                //       // ),
                //       // Text(
                //       //   "Class X-II A",
                //       //   style: TextStyle(
                //       //     fontSize: 20.0,
                //       //     fontWeight: FontWeight.w600,
                //       //     color: Colors.white,
                //       //   ),
                //       // ),
                //       // Text(
                //       //   "Roll no: 12",
                //       //   style: TextStyle(
                //       //     fontSize: 20.0,
                //       //     fontWeight: FontWeight.w600,
                //       //     color: Colors.white,
                //       //   ),
                //       // ),
                //     ],
                //   ),
                // ),
                // Container(
                //   width: size.width * 0.26,
                //   height: size.height * 0.12,
                //   color: Colors.blue,
                //   child: Container(
                //     height: size.height * 0.12,
                //     width: size.width * 0.24,
                //     clipBehavior: Clip.hardEdge,
                //     decoration: BoxDecoration(
                //       color: Colors.red,
                //       shape: BoxShape.circle,
                //       border: Border.all(width: 2.5, color: Colors.red),
                //       // image: DecorationImage(
                //       //   image: AssetImage('assets/images/profile-1.jpg'),
                //       //   fit: BoxFit.cover,
                //       // ),
                //     ),
                //     // child: Image.asset(
                //     //   'assets/images/profile-1.jpg',
                //     //   fit: BoxFit.cover,
                //     // ),
                //   ),
                // ),
                //     ],
                //   ),
                // ),
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Card(
                          color: Colors.blue,
                          margin: EdgeInsets.zero,
                          child: Column(
                            children: [
                              Text(
                                "Try using Expanded widget with flex",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Class X-II A",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Roll no: 12",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.06),
                      Container(
                        margin: EdgeInsets.zero,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          border: Border.all(width: 4.5, color: Colors.red),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: size.height * 0.056,
                          backgroundColor: Colors.blue,
                          backgroundImage:
                              const AssetImage('assets/images/profile-1.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
