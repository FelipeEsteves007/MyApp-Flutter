import 'package:flutter/material.dart';
import 'package:myapp/styles/colors.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     color: AppColors.gold,
      child: Row(
        children: [
          Container(
            width: 90,
            height: 120,
            decoration: BoxDecoration(color: AppColors.lightGray),
            margin: const EdgeInsets.only(right: 16),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  'Titulo',
                  style: TextStyle(fontSize: 18, color: AppColors.lightGray),
                ),
              ),
              Text('informações', style: TextStyle(color: AppColors.lightGray)),
            ],
          ),
        ],
      ),
    );
  }
}
