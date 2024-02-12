import 'package:flutter/material.dart';
import 'package:soundbox2/views/QR.dart';
import 'package:soundbox2/views/scanner.dart';

void main() {
  runApp(const soundbox());
}

class soundbox extends StatelessWidget {
  const soundbox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Scanner.Id,
      routes: {
        Qr.Id: (context) => const Qr(),
        Scanner.Id: (context) => const Scanner(),
      },
    );
  }
}
