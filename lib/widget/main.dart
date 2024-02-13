import 'package:flutter/material.dart';
import 'package:soundbox2/views/QR.dart';
import 'package:soundbox2/views/scanner.dart';
import 'package:soundbox2/views/money.dart';

void main() {
  runApp(const soundbox());
}

class soundbox extends StatelessWidget {
  const soundbox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Scanner.iD,
      routes: {
        Qr.iD: (context) => const Qr(),
        Scanner.iD: (context) => const Scanner(),
        Money.iD: (context) => const Money(walletAddress: 'value')
      },
    );
  }
}
