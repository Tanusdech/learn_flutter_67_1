import 'package:flutter/material.dart';
import 'package:learn_flutter_67_1/screen/home.dart';
import 'package:learn_flutter_67_1/screen/item.dart';

void main() {
  runApp(
    MaterialApp(
      title: "หัวข้อ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          backgroundColor: const Color.fromARGB(255, 64, 95, 251),
          centerTitle: true,
        ),
        body: Item(),
      ),
    ),
  );
}
