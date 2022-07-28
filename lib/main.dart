import 'package:flutter/material.dart';
import 'package:school_app/Screens/loginpage.dart';
import 'package:school_app/Screens/school_id_login.dart';
import 'package:school_app/Screens/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "School App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'SF Pro Display',
      ),
      home: const LoginPage(),
      routes: {
        '/school_id_page': (context) => const SchoolIDPage(),
        '/login_page': (context) => const LoginPage(),
      },
    );
  }
}
