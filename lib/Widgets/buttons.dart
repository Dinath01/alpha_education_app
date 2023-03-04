import 'package:flutter/material.dart';
import '../Screens/start_screen.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
    minimumSize: Size(327, 50),
    primary: Colors.purple.shade300,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    ));
