abstract class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
  void display();
}

class Student extends Person {
  const Student({required super.name, required super.age});

  @override
  void display() {
    print('Student Name : $name');
    print('Student Age : $age');
  }
}

class Teacher extends Person {
  const Teacher({required super.name, required super.age});

  @override
  void display() {
    print('Teacher Name : $name');
    print('Teacher Age : $age');
  }
}
