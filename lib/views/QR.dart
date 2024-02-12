import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qr extends StatefulWidget {
  static const String Id = 'qr_screen';

  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            // TODO: TOP BACK BUTTON
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          QrImageView(
            // Dependency: https://pub.dev/packages/qr_flutter
            data: "Love You OwO!!!",
            version: QrVersions.auto,
          ),
        ],
      ),
    );
  }
}
