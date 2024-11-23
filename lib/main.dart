import 'package:coder_zone_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoderZoneApp());
}

class CoderZoneApp extends StatelessWidget {
  const CoderZoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
