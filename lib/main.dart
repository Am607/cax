// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:study/view/home.dart';
import 'package:study/view/state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Demo(),
        ));
  }
}
