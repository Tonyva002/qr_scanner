import Foundation

class QRScannerApiImpl: NSObject, QRScannerApi {
    func scan() -> QRResult {
        let result = QRResult()
        result.code = "QR_CODE_DEMO"
        return result
    }
}
