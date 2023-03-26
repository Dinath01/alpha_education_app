import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

class QRScanScreen extends StatefulWidget {
  @override
  _QRScanScreenState createState() => _QRScanScreenState();
}

class _QRScanScreenState extends State<QRScanScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;
  late String qrCodeData;
  bool isCameraPermissionGranted = false;

  void _requestCameraPermission() async {
    final permissionStatus = await Permission.camera.request();
    if (permissionStatus.isGranted) {
      setState(() {
        isCameraPermissionGranted = true;
      });
    } else {
      setState(() {
        isCameraPermissionGranted = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _requestCameraPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
      ),
      body: !isCameraPermissionGranted
          ? Center(
              child: Text('Camera permission not granted'),
            )
          : QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrCodeData = scanData.code!;
      });
      controller.pauseCamera();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QRDisplayScreen(qrCodeData: qrCodeData),
        ),
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class QRDisplayScreen extends StatelessWidget {
  final String qrCodeData;

  const QRDisplayScreen({Key? key, required this.qrCodeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Data'),
      ),
      body: Center(
        child: Text(qrCodeData),
      ),
    );
  }
}