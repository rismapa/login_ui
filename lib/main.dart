import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_screen/login_screen.dart';
import 'package:login_ui/screens/sign_up/sign_up_screen.dart';
import 'package:login_ui/widgets/page_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      home: SignUpScreen(),
    );
  }
}
