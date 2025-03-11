import 'package:pigeon/pigeon.dart';

class QRCodeResult {
  String? code;

  QRCodeResult({this.code});
}

@HostApi()
abstract class QRScannerApi {
  QRCodeResult scan();
}
