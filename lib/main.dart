import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0C9869),
        backgroundColor: Color(0xFFF9F8FD),
      ),
      home: HomePage(),
    );
  }
}
