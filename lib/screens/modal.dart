import 'package:flutter/material.dart';
import 'package:myapp/styles/colors.dart';

class modal extends StatefulWidget {
  const modal({super.key});

  @override
  State<modal> createState() => _modalState();
}

class _modalState extends State<modal> {
  String? selectValue;

   final List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(value: 'opcao1', child: Text('Criptomoeda')),
    DropdownMenuItem(value: 'opcao2', child: Text('Tesouro Direto')),
    DropdownMenuItem(value: 'opcao3', child: Text('Renda Fixa')),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: EdgeInsets.only(
        left: 32,
        right: 32,
        top: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),
            Center(
              child: Icon(
                Icons.auto_graph_outlined,
                color: AppColors.gold,
                size: 45,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Por aqui você pode investir!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                color: AppColors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16,),
            Text("Escolha um investimento", style: TextStyle(
              fontSize: 16
            ),),
            SizedBox(height: 10,),
            DropdownButton<String>(
              isExpanded: true,
              icon: Icon(Icons.arrow_drop_down_outlined),
              value: selectValue,
              items : items, 
              hint: Text('Selecione uma opção'),
              onChanged: (value) {
                setState(() {
                  selectValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
