import 'package:flutter/material.dart';
import '../screens/start_screen.dart';


final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  primary: Colors.purple.shade300,
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
);

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final Color color;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
    required this.color,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
    child: Text(
      text,
      style: TextStyle(fontSize: 24),
    ),
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      primary: color,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    onPressed: onClicked,
  );
}

