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

/*
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
*/

/// *******************************************************************************************
/// Function as an Object

/*
void main() {
  Function person = getName;
  person(); // Aleksey
  person = getLastName;
  person(); // Kuzmin

  getPerson(getName); // Aleksey
  getPerson(getLastName); // Kuzmin

  Function myPerson = getNameOrLastName('Test');
  myPerson(); // Kuzmin
}

// Function as a returned value
Function getNameOrLastName(String nameOrLastName) {
  if (nameOrLastName == 'Aleksey') {
    return getName;
  } else {
    return getLastName;
  }
}

// Function as an Argument
void getPerson(Function myFunction) {
  myFunction();
}

void getName() {
  print('Aleksey');
}

void getLastName() {
  print('Kuzmin');
}
*/

/// *******************************************************************************************
/// Anonymous functions

/*
void main() {
  // Function addTwoNumbers = (int a, int b) {
  //   var sum = a + b;
  //   print(sum);
  // };

  Function addTwoNumbers = (int a, int b) => print(a + b);

  addTwoNumbers(1, 2);

  int result = operationNumbers(5, 2, (a, b) => a * b);
  print(result);
}

int operationNumbers(int a, int b, Function operation) {
  return operation(a, b);
}

void addNumbers(int a, int b) {
  var sum = a + b;
  print(sum);
}
*/

/// *******************************************************************************************
/// Lexical scope

/*
String topLevelVariable = 'TopLevelVariable';

void main() {
  String variableInsideMain = 'Variable Inside Main';

  void myFunction() {
    String variableInsideMyFunction = 'Variable Inside My Function';

    print('Inside My Function');

    void nestedFunction() {
      String variableInsideNestedFunction = 'Variable Inside Nested Function';

      // print('Inside Nested Function');
      print(topLevelVariable);
      print(variableInsideMain);
      print(variableInsideMyFunction);
      print(variableInsideNestedFunction);
    }

    nestedFunction();
  }

  myFunction();
}
*/

/// *******************************************************************************************
/// Closures

void main() {
  Function add = addNumbers(4); // add = sum & x = 4
  int result = add(6); // result = 4 + 6
  print(result); // 10

  int anotherResult = addNumbers(5)(7); // x = 5 & y = 7
  print(anotherResult); // 12
}

// External Function
Function addNumbers(int x) {
  // Nested Function
  // int sum(int y) {
  //   return x + y;
  // }

  return (int y) => x + y;
}
