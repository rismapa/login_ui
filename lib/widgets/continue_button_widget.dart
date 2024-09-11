import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueButtonWidget extends StatelessWidget {
  final String continueTxt;

  ContinueButtonWidget({
    super.key,
    required this.continueTxt,
  });

  final List<String> iconData = [
    "assets/svgs/apple.svg",
    "assets/svgs/google.svg",
    "assets/svgs/facebook.svg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/svgs/line_left.svg"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(
                continueTxt,
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffB6B6B6),
                ),
              ),
            ),
            SvgPicture.asset("assets/svgs/line_right.svg"),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: iconData.map((icon) {
            return Container(
              height: 44,
              width: 59,
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 20),
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(colors: [
                  const Color(0xffFFFFFF).withOpacity(.1),
                  const Color(0xffFFFFFF).withOpacity(.2),
                  const Color(0xffFFFFFF).withOpacity(.01)
                ], stops: const [
                  0.0,
                  .77,
                  1.0
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: SvgPicture.asset(
                icon,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
