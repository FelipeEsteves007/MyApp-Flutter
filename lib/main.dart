import 'package:flutter/material.dart';
import 'package:myapp/screens/dashboard.dart';
import 'screens/info_screen.dart';
import './screens/login_screen.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => const LoginScreen(),
        'info': (context) => const InfoScreen(),
        'dashboard' : (context) => const Dashboard(),
      },
      initialRoute: 'login',
    );
  }
}