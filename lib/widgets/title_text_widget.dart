import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleTextWidget extends StatelessWidget {
  final String titleTxt;
  final String subtitleTxt;

  const TitleTextWidget({
    super.key,
    required this.titleTxt,
    required this.subtitleTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleTxt,
          style: GoogleFonts.poppins(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: const Color(0xffEFEFEF)),
        ),
        Text(
          subtitleTxt,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xffA4A4A4)),
        ),
      ],
    );
  }
}
