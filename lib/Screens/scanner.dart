// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';


// class QRCodeScanner extends StatefulWidget {
//   @override
//   _QRCodeScannerState createState() => _QRCodeScannerState();
// }

// class _QRCodeScannerState extends State<QRCodeScanner> {
//   GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   late QRViewController controller;

//   @override
//   void initState() {
//     super.initState();
//     _startScanner();
//   }

//   void _startScanner() async {
//     await controller.flipCamera();
//     controller.resumeCamera();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('QR Code Scanner'),
//         ),
//         body: QRView(
//           key: qrKey,
//           onQRViewCreated: (controller) {
//             this.controller = controller;
//             controller.scannedDataStream.listen((scanData) {
//               // Handle the scan result
//               print(scanData.code);

//               // Stop the scanner
//               controller.stopCamera();
//             }, onError: (error) {
//               // Handle the error
//               print(error.toString());
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
