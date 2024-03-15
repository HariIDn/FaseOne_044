import 'package:flutter/material.dart';

class HeadHome extends StatefulWidget {
  const HeadHome({super.key, required this.nama, required this.no});
  final String nama;
  final String no;
  @override
  State<HeadHome> createState() => _HeadHomeState();
}

class _HeadHomeState extends State<HeadHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Column()],
    );
  }
}
