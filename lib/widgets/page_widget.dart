import 'dart:ui';

import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final Widget child;

  const PageWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff151316),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Blurred circles kanan
          Positioned(
            bottom: -size.width * .75,
            right: -size.width * .7,
            child: const BlurredCircle(
              colorSatu: 0xffB379DF,
              colorDua: 0xff360060,
            ),
          ),

          // Blurred circle kiri
          Positioned(
            bottom: -size.width * .75,
            left: -size.width * .7,
            child: const BlurredCircle(
              colorSatu: 0xffC45647,
              colorDua: 0xffD25A63,
            ),
          ),

          SafeArea(child: child),
        ],
      ),
    );
  }
}

class BlurredCircle extends StatelessWidget {
  final int colorSatu;
  final int colorDua;

  const BlurredCircle({
    super.key,
    required this.colorSatu,
    required this.colorDua,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 397,
      width: 397,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Color(colorSatu),
            Color(colorDua),
          ],
          stops: const [0.0, 1.0],
          radius: 100,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
        child: Container(
          color: Colors
              .transparent, // Membuat filter hanya mempengaruhi area lingkaran
        ),
      ),
    );
  }
}
