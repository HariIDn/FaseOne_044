import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.nama, required this.no});
  final String nama;
  final String no;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Nama: $nama'), Text('No HP: $no')],
      ),
    );
  }
}
