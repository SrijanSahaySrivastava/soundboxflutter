import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:soundbox2/views/QR.dart';

class Scanner extends StatefulWidget {
  static const String Id = 'scanner_screen';

  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.document_scanner_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            // TODO: TOP BACK BUTTON
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Qr(),
              ),
            );
          },
        ),
      ),
      body: MobileScanner(
        controller: MobileScannerController(
          detectionSpeed: DetectionSpeed,
          returnImage: true,
        ),
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          final Uint8List? image = capture.image;
          for (final Barcode in barcodes) {
            print('${Barcode.rawValue}');
          }
          if (image != null) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(barcodes.first.rawValue ?? ""),
                    content: Image(
                      image: MemoryImage(image),
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
