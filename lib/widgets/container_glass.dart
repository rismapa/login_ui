import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_screen/widgets/login_component.dart';

class ContainerGlassWidget extends StatelessWidget {
  final Widget child;

  const ContainerGlassWidget({
    super.key,
    required this.size,
    required this.child,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .8,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.white.withOpacity(.1))),
        // color: Colors.amber,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(59),
          topRight: Radius.circular(59),
        ),
      ),
      child: child,
    );
  }
}
