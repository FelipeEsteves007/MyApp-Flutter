import 'package:flutter/material.dart';
import 'package:myapp/components/colorPagePrincipal.dart';
import 'package:myapp/components/customCard.dart';
import 'package:myapp/styles/colors.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorPagePrincipal(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Image.asset("assets/images/logo.png", width: 150,),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white60,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Buscar", style: TextStyle(
                      fontSize: 16,
                      color: AppColors.blue,
                    ),),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  padding: EdgeInsets.zero, // Remove o padding padrão do ListView
                  children: const [
                    Customcard("Compre", "Criptomoeda"),
                    SizedBox(height: 20),
                    Customcard("Compre", "Criptomoeda"),
                    SizedBox(height: 20),
                    Customcard("Compre", "Criptomoeda"),
                    SizedBox(height: 20),
                    Customcard("Compre", "Criptomoeda"),
                    SizedBox(height: 20),
                    Customcard("Compre", "Criptomoeda"),
                    SizedBox(height: 20),
                    Customcard("Compre", "Criptomoeda"),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}