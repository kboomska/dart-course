/// *******************************************************************************************
/// Introduction

/*
void main() {
  sayHello();

  String myName = getName();
  print(myName);

  String myAge = getAge(30);
  print(myAge);
}

// void sayHello() {
//   print('Hello Dart');
// }

void sayHello() => print('Hello Dart');

// String getName() {
//   return 'Aleksey';
// }

String getName() => 'Aleksey';

// String getAge(int age) {
//   return 'Your age $age';
// }

String getAge(int age) => 'Your age $age';
*/

/// *******************************************************************************************
/// Function parameters

void main() {
  getPerson('Aleksey', 30);
  // getPerson(30, 'Aleksey');

  getPersonOptional('Aleksey');

  getPersonNamed(name: 'Aleksey', age: 30);
  getPersonNamed(age: 30, name: 'Aleksey');
  getPersonNamed(age: 30);
  getPersonNamed();
}

void getPerson(String name, int age) {
  print('Name: $name, Age: $age');
}

// void getPerson(name, age) {
//   print('Name: $name, Age: $age');
// }

// Optional positional parameters
void getPersonOptional(String name, [int? age]) {
  print('Name: $name, Age: $age');
}

// Named parameters
void getPersonNamed({String? name, int age = 0}) {
  print('Name: $name, Age: $age');
}
