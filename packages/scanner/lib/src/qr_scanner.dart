/*import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScannerWidget extends StatefulWidget {
  final Function(String) onQRViewCreated;
  const QRScannerWidget({Key? key, required this.onQRViewCreated})
      : super(key: key);

  @override
  _QRScannerWidgetState createState() => _QRScannerWidgetState();
}

class _QRScannerWidgetState extends State<QRScannerWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (controller != null) {
      controller!.pauseCamera();
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: (controller) {
        this.controller = controller;
        controller.scannedDataStream.listen((scanData) {
          widget.onQRViewCreated(scanData.code ?? '');
        });
      },
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}*/

import 'pigeon.dart';

class NativeQRScanner {
  final QRScannerApi _api = QRScannerApi();

  Future<String?> scanQRCode() async {
    final result = await _api.scan();
    return result.code;
  }
}
