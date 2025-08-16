class Person {
  String name;
  int age;
  String job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
}

List<Person> personList = [
  Person(name: "สมหมาย", age: 20, job: "นักศึกษา"),
  Person(name: "สมศักดิ์", age: 25, job: "วิศวกร"),
  Person(name: "สมปอง", age: 30, job: "แพทย์"),
  Person(name: "สมบูรณ์", age: 35, job: "ครู"),
  Person(name: "สมเสร็จ", age: 40, job: "นักธุรกิจ"),
];
