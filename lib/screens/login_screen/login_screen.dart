import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/screens/login_screen/widgets/login_component.dart';
import 'package:login_ui/widgets/button_widget.dart';
import 'package:login_ui/widgets/container_glass.dart';
import 'package:login_ui/widgets/continue_button_widget.dart';
import 'package:login_ui/widgets/page_widget.dart';
import 'package:login_ui/widgets/textfield_widet.dart';
import 'package:login_ui/widgets/title_text_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PageWidget(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/Illustration.png",
            height: size.height * .3,
            // width: double.infinity,
            fit: BoxFit.cover,
          ),
          ContainerGlassWidget(
            size: size,
            child: const LoginComponent(),
          ),
        ],
      ),
    ));
  }
}
