import 'package:flutter/material.dart';
import 'package:myapp/styles/colors.dart';

class Customcard extends StatelessWidget {
  final String nome;
  final String info;
  const Customcard ( this.info, this.nome ,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.gold,
      ),
      child: Row(
        children: [
          Container(
            width: 90,
            height: 120,
            decoration: BoxDecoration(
                color: AppColors.lightGray,
                borderRadius: BorderRadius.circular(15)
            ),
            margin: const EdgeInsets.only(right: 16),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  nome,
                  style: TextStyle(fontSize: 18, color: AppColors.lightGray),
                ),
              ),
              Text(info, style: TextStyle(color: AppColors.lightGray)),
            ],
          ),
        ],
      ),
    );
  }
}
