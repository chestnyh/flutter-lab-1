import 'package:flutter/material.dart';

// 1) Створити простий мобільний застосунок
//    1.2) Застосунок повинен містити Ім’я Прізвище
// 2) Використання ООП мови Dart. Конструктори, іменовані параметри, приватні поля, гетери, сетери

void main() {
  runApp(MyApp());
}

class Student {
  String _firstName;
  String _lastName;

  Student(firstName, lastName) {
    this._firstName = firstName;
    this._lastName = lastName;
  }

  get firstName => this._firstName;
  set firstName(firstName) => this._firstName = firstName;

  get lastName => this._lastName;
  set lastName(lastName) => this._lastName = lastName;

  get fullName => this._firstName + " " + this._lastName;
}

class MyApp extends StatelessWidget {
  var student = new Student("Oleksii", "Chestnykh");
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: new Center(
            child: Container(
          child: Text(student.fullName,
              style: TextStyle(
                  decoration: TextDecoration.none, color: Colors.black)),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(16.0),
            color: Colors.white,
          ),
        )));
  }
}
