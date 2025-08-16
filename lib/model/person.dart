// class Person {
//   String name;
//   int age;
//   String job;

//   // Constructor
//   Person({required this.name, required this.age, required this.job});
// }

// List<Person> personList = [
//   Person(name: "สมหมาย", age: 20, job: "นักศึกษา"),
//   Person(name: "สมศักดิ์", age: 25, job: "วิศวกร"),
//   Person(name: "สมปอง", age: 30, job: "แพทย์"),
//   Person(name: "สมบูรณ์", age: 35, job: "ครู"),
//   Person(name: "สมเสร็จ", age: 40, job: "นักธุรกิจ"),
// ];

import 'package:flutter/material.dart';

enum Job {
  student(
    title: "นักศึกษา",
    image: "assets/images/ai-generated-9713579_1280.png",
    color: Colors.redAccent,
  ),
  engineer(
    title: "วิศวกร",
    image: "assets/images/cartoon-8033257_1280.png",
    color: Colors.blueAccent,
  ),
  doctor(
    title: "แพทย์",
    image: "assets/images/cat-6887210_1280.png",
    color: Colors.greenAccent,
  ),
  teacher(
    title: "ครู",
    image: "assets/images/woman-8057323_1280.png",
    color: Colors.purpleAccent,
  ),
  business(
    title: "นักธุรกิจ",
    image: "assets/images/cats-8992040_1280.jpg",
    color: Colors.orangeAccent,
  );

  final String title;
  final String image;
  final Color color;
  const Job({required this.title, required this.image, required this.color});
}

class Person {
  String name;
  int age;
  Job job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
}

List<Person> personList = [
  Person(name: "สมหมาย", age: 20, job: Job.student),
  Person(name: "สมศักดิ์", age: 25, job: Job.engineer),
  Person(name: "สมปอง", age: 30, job: Job.doctor),
  Person(name: "สมใจ", age: 35, job: Job.teacher),
  Person(name: "สมเสร็จ", age: 40, job: Job.business),
];
