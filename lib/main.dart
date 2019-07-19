// Import Material theme.
import 'package:flutter/material.dart';

// Import pages.
import 'views/home.dart';

void main() => runApp(Dialogue());

class Dialogue extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialogue',
      home: Home(),
    );
  }
}
