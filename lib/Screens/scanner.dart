import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';


class Qrscan extends StatefulWidget {
  const Qrscan({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Qrscan> createState() => _QrscanState();
}

class _QrscanState extends State<Qrscan> {
  final GlobalKey _gLobalkey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
     setState(() {
       result = event;
     });
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 400,
              width: 400,
              child: QRView(
                  key: _gLobalkey,
                  onQRViewCreated: qr
              ),
            ),
            Center(
              child: (result !=null) ? Text('${result!.code}') : Text('Scan a code'),
            )
          ],
        ),
      ),
    );
  }
}