/// *******************************************************************************************
/// Basic operations with Sets

import 'dart:math';

void main() {
  // Creating a Set
  final Set<int> setOne = {};
  final setTwo = <int>{};

  final setThree = {1, 2, 3, 3}; // Set<int>
  print(setThree); // {1, 2, 3}

  var setFour = Set.from([1, 'hello', true]); // Set<dynamic>

  // Checking the content
  final fruits = {'apple', 'pinapple', 'watermelon'};
  print(fruits.contains('apple')); // true
  print(fruits.contains('pear')); // false

  // Adding and Removing single elements
  final newFruits = <String>{};
  newFruits.add('orange');
  newFruits.add('pear');
  newFruits.add('orange');
  print(newFruits); // {orange, pear}

  newFruits.remove('pear');
  print(newFruits); // {orange}

  // Adding multiple elements
  newFruits.addAll(['apple', 'pear', 'watermelon']);
  print(newFruits); // {orange, apple, pear, watermelon}

  // Looping over the elements
  for (final fruit in fruits) {
    print('I\'m like $fruit');
  }

  // Copying Sets
  // final freshFruits = fruits; // Copying link, not values!
  final freshFruits = fruits.toSet();
  print(fruits); // {apple, pinapple, watermelon}
  freshFruits.remove('watermelon');
  print('fruits: $fruits'); // {apple, pinapple, watermelon}
  print("freshFruits: $freshFruits"); // {apple, pinapple}

  // Other operations
  var newFruitsTwo = {'pear', ...freshFruits, if (true) ...fruits};
  print(newFruitsTwo); // {pear, apple, pinapple, watermelon}

  final randomGenerator = Random();
  final randomList = <int>[];

  for (int i = 0; i < 10; i++) {
    final randomInt = randomGenerator.nextInt(10) + 1;
    randomList.add(randomInt);
  }
  print(randomList);

  final uniqueValue = <int>{};
  final duplicates = <int>{};

  for (int number in randomList) {
    if (uniqueValue.contains(number)) {
      duplicates.add(number);
    }
    uniqueValue.add(number);
  }
  print(duplicates);
}
