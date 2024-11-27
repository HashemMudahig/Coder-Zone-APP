import 'package:coder_zone_app/screens/home_screen.dart';
import 'package:coder_zone_app/screens/login_screen.dart';
import 'package:coder_zone_app/screens/signup-spalsh_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoderZoneApp());
}

class CoderZoneApp extends StatelessWidget {
  const CoderZoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateAccountPage(),
    );
  }
}
