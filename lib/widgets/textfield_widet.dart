import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldWidet extends StatefulWidget {
  final String labelField;
  final String hintTextField;
  final Icon prefixIconField;
  final bool isPassword;

  const TextfieldWidet(
      {super.key,
      required this.labelField,
      required this.hintTextField,
      this.isPassword = false,
      required this.prefixIconField});

  @override
  State<TextfieldWidet> createState() => _TextfieldWidetState();
}

class _TextfieldWidetState extends State<TextfieldWidet> {
  bool _isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelField,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color(0xffA4A4A4),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [
                const Color(0xffFFFFFF).withOpacity(.1),
                const Color(0xffFFFFFF).withOpacity(.2),
                const Color(0xffFFFFFF).withOpacity(.01)
              ],
              stops: const [0.0, 0.77, 1.0],
              // radius: 20,
            ),
          ),
          child: TextField(
            style: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
            obscureText: widget.isPassword ? _isObsecure : false,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIconField,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _isObsecure = !_isObsecure;
                        });
                      },
                      icon: Icon(_isObsecure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                    )
                  : null,
              hintText: widget.hintTextField,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffA4A4A4)),
              contentPadding: const EdgeInsets.all(20.0),
              fillColor: Colors.transparent,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white.withOpacity(.1)),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white.withOpacity(.1)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
