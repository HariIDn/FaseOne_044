import 'package:flutter/material.dart';

class HeadLogin extends StatelessWidget {
  const HeadLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://images.tokopedia.net/img/cache/700/VqbcmM/2023/8/30/23062474-94fe-455c-aea5-4a04b57d2a86.jpg",
          ),
          radius: 70,
        )
      ],
    );
  }
}
