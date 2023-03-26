import 'package:flutter/material.dart';

class ClassInfoScreen extends StatelessWidget {
  final String className;
  final double feesPaid;
  final double feesTotal;
  final int attendance;

  ClassInfoScreen({
    required this.className,
    required this.feesPaid,
    required this.feesTotal,
    required this.attendance,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(className),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fees',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Paid: \$${feesPaid.toStringAsFixed(2)}'),
                Text('Total: \$${feesTotal.toStringAsFixed(2)}'),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Attendance',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text('$attendance classes attended out of 10'),
          ],
        ),
      ),
    );
  }
}
