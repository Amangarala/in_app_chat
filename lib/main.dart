import 'package:flutter/material.dart';
import 'package:in_app_chat/login.dart';
import 'package:zego_zimkit/services/services.dart';

void main() {
  ZIMKit().init(
    appID: 1036510848,
    appSign: "d4cde356d797f6c71cf7927c90c57f4448fd39b1549432b962ca17110627c640",

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}


