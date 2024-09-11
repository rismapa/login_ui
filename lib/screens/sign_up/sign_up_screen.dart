import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_screen/login_screen.dart';
import 'package:login_ui/widgets/button_widget.dart';
import 'package:login_ui/widgets/container_glass.dart';
import 'package:login_ui/widgets/continue_button_widget.dart';
import 'package:login_ui/widgets/page_widget.dart';
import 'package:login_ui/widgets/textfield_widet.dart';
import 'package:login_ui/widgets/title_text_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return PageWidget(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/Avatar.png",
              height: size.height * .3,
              fit: BoxFit.cover,
            ),
          ),
          ContainerGlassWidget(
            size: size,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                children: [
                  const TitleTextWidget(
                    titleTxt: "Get Started Free",
                    subtitleTxt: "Free Forever. No Credit Card Needed",
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const TextfieldWidet(
                    labelField: "Email Address",
                    hintTextField: "yourname@gmail.com",
                    prefixIconField: Icon(Icons.email_outlined),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextfieldWidet(
                    labelField: "Your Name",
                    hintTextField: "@yourname",
                    prefixIconField: Icon(Icons.person_2_outlined),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextfieldWidet(
                    labelField: "Password",
                    hintTextField: "****",
                    prefixIconField: Icon(
                      Icons.key,
                    ),
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  ButtonWidget(
                    buttonTxt: "Sign Up",
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ContinueButtonWidget(
                    continueTxt: "Or sign up with",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
