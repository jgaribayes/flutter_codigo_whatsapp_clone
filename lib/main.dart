import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp_clone/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xff065E52),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor:  Color(0xff01c851),
        ),
      ),
      home: HomePage(),
    );
  }
}
