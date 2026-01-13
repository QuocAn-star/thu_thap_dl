import 'package:flutter/material.dart';
import 'auth/auth_gate.dart';


void main() => runApp(const TravelDemoApp());

class TravelDemoApp extends StatelessWidget {
  const TravelDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GoGo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
      home: const AuthGate(),
    );
  }
}
