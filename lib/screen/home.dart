import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color.fromARGB(255, 54, 148, 242),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.all(50),
        child: Text(
          "Hello Flutter! Step 3",
          style: TextStyle(
            fontSize: 30,
            color: const Color.fromARGB(255, 254, 254, 254),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
