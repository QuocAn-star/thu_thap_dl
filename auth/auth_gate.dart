import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'login_sc.dart';
import '../Gogo.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: AuthService.instance.currentUserEmail(),
      builder: (context, snap) {
        if (snap.connectionState != ConnectionState.done) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        final email = snap.data;
        if (email == null) return const LoginScreen();
        return const HomeScreen(); // vào app chính
      },
    );
  }
}
