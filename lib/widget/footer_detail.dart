import 'package:flutter/material.dart';

class FooterDetail extends StatelessWidget {
  const FooterDetail({super.key, required this.onPressDone});
  final VoidCallback onPressDone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressDone,
          child: Text('Next'),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
