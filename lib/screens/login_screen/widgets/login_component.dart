import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/screens/sign_up/sign_up_screen.dart';
import 'package:login_ui/widgets/button_widget.dart';
import 'package:login_ui/widgets/continue_button_widget.dart';
import 'package:login_ui/widgets/textfield_widet.dart';
import 'package:login_ui/widgets/title_text_widget.dart';

class LoginComponent extends StatelessWidget {
  const LoginComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          const TitleTextWidget(
            titleTxt: "Welcome Back!",
            subtitleTxt: "welcome back we missed you",
          ),
          const SizedBox(
            height: 22,
          ),
          const TextfieldWidet(
            labelField: "Username",
            hintTextField: "Username",
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
            height: 10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password?",
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffA4A4A4),
                  ),
                )),
          ),
          const SizedBox(
            height: 24,
          ),
          ButtonWidget(
            buttonTxt: "Sign In",
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ));
            },
          ),
          const SizedBox(
            height: 24,
          ),
          ContinueButtonWidget(
            continueTxt: "Or continue with",
          ),
        ],
      ),
    );
  }
}
