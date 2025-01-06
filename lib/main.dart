import 'package:flutter/material.dart';
import 'package:moto_pixels/my_home_page.dart';
import 'package:dhttpd/dhttpd.dart';

void main() {
  runApp(const WebApp());
}

class WebApp extends StatelessWidget {
  const WebApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MotoPixels',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MotoPixels'),
    );
  }
}

