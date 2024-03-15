import 'package:flutter/material.dart';

class FooterHome extends StatelessWidget {
  const FooterHome({super.key, required this.onPressNext});

  final VoidCallback onPressNext;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressNext,
          child: Text('Next'),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
