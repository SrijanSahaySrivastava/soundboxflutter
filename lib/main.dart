import 'package:flutter/material.dart';
import 'package:soundbox2/views/QR.dart';
import 'package:soundbox2/views/login.dart';
import 'package:soundbox2/views/scanner.dart';
import 'package:soundbox2/views/money.dart';
import 'package:soundbox2/views/login.dart';

void main() {
  runApp(const soundbox());
}

class soundbox extends StatelessWidget {
  const soundbox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        Qr.iD: (context) => const Qr(),
        Scanner.iD: (context) => const Scanner(),
        Money.iD: (context) => const Money(walletAddress: 'value'),
        LoginScreen.id: (context) => LoginScreen()
      },
    );
  }
}
