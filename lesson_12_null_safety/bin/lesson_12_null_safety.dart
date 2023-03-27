/// *******************************************************************************************
/// Null safety principles

// Null safety principles:
// 1. Non-nullable by default
// 2. Incrementally adoptable
// 3. Fully sound

/*
void main() {
  int? age; // Nullable
  String name = 'Mark'; // Non-nullable
  var name1;

  print(name); // Mark
  print(age); // null
  print(name1); // null
}
*/

/// *******************************************************************************************
/// Flow Analysis: Promotion & Definite Assignment

/*
void main() {
  print(someValue(25)); // 25
  print(someValue(null)); // 0

  int x;
  if (25 > 0) {
    x = 1;
  } else {
    x = -1;
  }
  print(x);
}

int someValue(int? value) {
  if (value == null) {
    return 0;
    // return valueIsNotDefined();
  }
  return value;
}

Never valueIsNotDefined() {
  throw ArgumentError('Value is not defined');
}
*/

/// *******************************************************************************************
/// Null-aware operators

/*
void main() {
  print(someValue(25));
  print(someValue(null));

  print('');

  int? age;
  print(age); // null
  age ??= 20;
  print(age); // 20

  print('');

  print(absoluteValue(-25)); // 25
  print(absoluteValue(null)); // 0

  print('');

  print(guaranteedNonNullValue(25));
  // print(guaranteedNonNullValue(null)); // Unhandled exception

  num? value = 10;
  num otherValue = value as int;
  print(otherValue);
}

int? absoluteValue(int? value) {
  // return value?.abs();
  return value?.abs() ?? 0;
}

int guaranteedNonNullValue(int? value) {
  return value!;
}

int someValue(int? value) {
  // if (value == null) {
  //   return 0;
  // }
  // return value;

  // return value == null ? 0 : value;

  return value ?? 0;
}
*/

/// *******************************************************************************************
/// Null-aware cascade operator

/*
void main() {
  // Path path = Path();

  // path.moveTo(0, 0);
  // path.lineTo(0, 2);
  // path.lineTo(2, 2);

  Path? path;

  path
    ?..moveTo(0, 0)
    ..lineTo(0, 2)
    ..lineTo(2, 2);
}

class Path {
  void moveTo(int x, int y) {}
  void lineTo(int x, int y) {}
}
*/

/// *******************************************************************************************
/// Late variables

// int global; // Global variables must be initialized
late int global; // Allowed

void main() {
  // var pizza = Pizza().printPizza(); // Coocking pizza...
  // print(pizza); // Pizza (1): Spring, price: 10.0

  late var pizza = Pizza().printPizza();
  // print(pizza);

  global = 1;
  print(global);
}

class Pizza {
  // int id = 1;
  // String name = 'Spring';
  // double price = 10;

  // int id;
  // String name;
  // double price;

  // Pizza()
  //     : id = 1,
  //       name = 'Spring',
  //       price = 10;

  // Pizza(this.id, this.name, this.price);

  late int id;
  late String name;
  late final double price;

  Pizza() {
    id = 1;
    name = 'Spring';
    price = 10;
  }

  String printPizza() {
    print('Coocking pizza...');
    return 'Pizza ($id): $name, price: $price';
  }
}
