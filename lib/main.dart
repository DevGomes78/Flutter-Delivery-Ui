import 'package:flutter/material.dart';

import 'homepage/home_page.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

