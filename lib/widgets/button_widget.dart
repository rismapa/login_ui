import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonTxt;
  final VoidCallback onPress;

  const ButtonWidget({
    super.key,
    required this.buttonTxt,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [Color(0xff9C3FE4), Color(0xffC65647)],
          stops: [0.0, 1.0],
        ),
      ),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          buttonTxt,
          style: GoogleFonts.poppins(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
