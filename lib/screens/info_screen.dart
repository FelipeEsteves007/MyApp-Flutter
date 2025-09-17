import 'package:flutter/material.dart';
import 'package:myapp/components/colorPagePrincipal.dart';
import 'package:myapp/components/customCard.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorPagePrincipal(
        child: Center(
          child: Customcard(),
        ),
      ),
    );
  }
}