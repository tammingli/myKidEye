import 'package:flutter/material.dart';
import 'package:mykideye/penyakit_mata.dart';
import 'package:mykideye/search.dart';
import 'package:mykideye/splash_screen.dart';
import './home.dart';
import 'faq_main.dart';
import 'hubungi_kami.dart';
import 'location.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

