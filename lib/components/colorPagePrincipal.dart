import 'package:flutter/material.dart';
import 'package:myapp/styles/colors.dart';

class ColorPagePrincipal extends StatelessWidget {
  final Widget? child;
  const ColorPagePrincipal({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            const Color.fromARGB(255, 3, 44, 74),
            AppColors.blue,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}