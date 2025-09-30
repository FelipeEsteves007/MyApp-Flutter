import 'package:flutter/material.dart';
import 'package:myapp/components/colorPagePrincipal.dart';
import 'package:myapp/screens/modal.dart';
import 'package:myapp/styles/colors.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ColorPagePrincipal()],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              context: context, 
              isScrollControlled: true,
              builder: (context) {
                return modal();
            },);

           },
      backgroundColor: AppColors.gold,
      child: Icon(Icons.add_shopping_cart_sharp, color: AppColors.blue,),
          ),
    );
  }
}