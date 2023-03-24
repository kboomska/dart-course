/// *******************************************************************************************
/// Introduction

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
