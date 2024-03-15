import 'package:flutter/material.dart';

class FooterLogin extends StatelessWidget {
  const FooterLogin({
    super.key,
    required this.onPressedLogin,
  });

  final VoidCallback onPressedLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedLogin,
          child: Text('Masuk'),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
