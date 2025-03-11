import 'package:flutter/material.dart';
import 'package:scanner/qr_processing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QRScannerScreen(),
    );
  }
}

class QRScannerScreen extends StatelessWidget {
  final NativeQRScanner scanner = NativeQRScanner();

  QRScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Escáner QR Nativo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await scanner.scanQRCode();
            print('Código QR: $result');
          },
          child: Text('Escanear QR'),
        ),
      ),
    );
  }
}
