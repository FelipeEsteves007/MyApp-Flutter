import 'package:flutter/material.dart';
import 'package:myapp/screens/info_screen.dart';
import 'package:myapp/styles/colors.dart';
import 'wallet_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _currentIndex = 0;
  final List<Widget> _screens = <Widget>[InfoScreen(), Wallet()];
  
  void uptdateIndex (int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) => uptdateIndex(value),
        selectedItemColor:  AppColors.gold,
        unselectedItemColor: AppColors.blue,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.info_outline_rounded), 
            label: "Informações"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), 
            label: "Wallet",)
      ] ),
    );
  }
}