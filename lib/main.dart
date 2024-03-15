import 'package:flutter/material.dart';
import 'package:ucp1/screen/detail_screen.dart';
import 'package:ucp1/screen/home_screen.dart';
import 'package:ucp1/screen/login_screen.dart';
import 'package:ucp1/widget/login/form_login.dart';
import 'package:ucp1/widget/login/head_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
