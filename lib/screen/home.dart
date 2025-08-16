import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/cats-8992040_1280.jpg",
          width: 350,
          height: 350,
        ),
        const SizedBox(height: 20),
        Image.network(
          "https://cdn.pixabay.com/photo/2024/02/21/11/34/ai-generated-8587505_1280.png",
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
