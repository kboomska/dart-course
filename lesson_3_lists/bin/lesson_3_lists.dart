/// *******************************************************************************************
/// Basic operations with Lists

/*
void main() {
  // Create List
  var fruits = ['apple', 'pineapple', 'watermelon']; // List<String>
  print(fruits);

  // fruits = [];
  // print(fruits); // []

  // fruits = ['orange', 'pear'];
  // print(fruits);

  var apple = []; // List<dynamic>
  List<String> pineapple = [];
  List<int> numbers = [];

  var orange = <String>[]; // List<String>

  // Accessing Elements
  final secondElement = fruits[1];
  print(secondElement); // pineapple

  final index = fruits.indexOf('watermelon');
  final value = fruits[index];
  print('The value at index $index is $value');

  // Assigning Values to List Elements
  fruits[1] = 'lemon';
  print(fruits); // [apple, lemon, watermelon]

  // Adding Elements to the End of a List
  fruits.add('avocado');
  print(fruits); // [apple, lemon, watermelon, avocado]

  // Inserting Elements
  fruits.insert(1, 'banana');
  print(fruits); // [apple, banana, lemon, watermelon, avocado]

  // Removing Elements
  fruits.remove('apple');
  print(fruits); // [banana, lemon, watermelon, avocado]

  fruits.removeAt(1);
  print(fruits); // [banana, watermelon, avocado]

  // Sorting Elements
  final integers = [22, 83, 1, 443, 6, 20, 2];
  integers.sort();
  print(integers); // [1, 2, 6, 20, 22, 83, 443]

  final minValue = integers[0];
  print(minValue);
  final maxValue = integers[integers.length - 1];
  print(maxValue);

  fruits.sort();
  print(fruits); // [avocado, banana, watermelon]
}
*/

/// *******************************************************************************************
/// Modifiable and Unmodifiable Lists

/*
void main() {
  // final fruits = ['apple', 'pineapple', 'watermelon'];
  // print(fruits);

  // fruits = []; // Error! The List is final!
  // print(fruits); // []

  // fruits = ['orange', 'pear']; // Error! The List is final!
  // print(fruits);

  // fruits.remove('apple');
  // fruits.add('orange');
  // fruits[1] = 'avocado';
  // print(fruits); // [pineapple, avocado, orange]

  // Unmodifiable List
  // const listOfFruits = ['apple', 'pineapple', 'watermelon'];
  // listOfFruits.remove('apple'); // Runtime error!
  // listOfFruits.add('orange'); // Runtime error!
  // listOfFruits[1] = 'avocado'; // Runtime error!
  // print(listOfFruits);

  // Compile-time constant List
  final fruits = const ['apple', 'pineapple', 'watermelon'];
  // fruits.remove('apple'); // Runtime error!
  // fruits.add('orange'); // Runtime error!
  // fruits[1] = 'avocado'; // Runtime error!
  // print(fruits);

  // Create unmodifiable List
  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);
}
*/

/// *******************************************************************************************
/// List properties

/*
void main() {
  const fruits = ['apple', 'pineapple', 'watermelon'];
  print(fruits.first); // apple
  print(fruits.last); // watermelon

  print(fruits[0]); // apple
  print(fruits[fruits.length - 1]); // watermelon

  print(fruits.isEmpty); // false
  print(fruits.isNotEmpty); // true

  for (int index = 0; index < fruits.length; index++) {
    final fruit = fruits[index];
    print('I like $fruit');
  }

  for (final fruit in fruits) {
    print('I don\'t like $fruit');
  }
}
*/

/// *******************************************************************************************
/// spread operator, if and for collections

void main() {
  // spread operator (...)
  // collection if
  // collection for

  const orangeAllergy = true;

  const appleAndPineapple = ['apple', 'pineapple'];
  const orangeAndPear = [if (!orangeAllergy) 'orange', 'pear'];

  // final fruits = ['watermelon'];

  // fruits.addAll(appleAndPineapple);
  // fruits.addAll(orangeAndPear);
  // print(fruits);

  final fruits = [
    'watermelon',
    ...appleAndPineapple,
    ...orangeAndPear,
  ];
  print(fruits);

  var bigFruits = ['BANANA', for (final fruit in fruits) fruit.toUpperCase()];
  print(bigFruits);
}
