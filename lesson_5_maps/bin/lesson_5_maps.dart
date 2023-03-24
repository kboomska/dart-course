/// *******************************************************************************************
/// Basic operations with Maps

void main() {
  final Map<String, int> emptyMapOne = {};
  final emptyMapTwo = <String, int>{};

  final emptySomething = {}; // Map<dynamic, dynamic>
  final emptySet = <String>{}; // Set<String>

  final caloriesInFruitOne = {
    'apple': 200,
    'pineapple': 150,
    'watermelon': 650,
  };

  final test = {
    1: 'one',
    2: 'two',
  };

  print(caloriesInFruitOne);
  print(test);

  final caloriesInFruitTwo = {
    'apple': 200, // Ignored
    'pineapple': 150,
    'apple': 650,
  };
  print(caloriesInFruitTwo); // {apple: 650, pineapple: 150}

  final caloriesInFruitThree = {
    'apple': [200, 650],
    'pineapple': 150,
  };
  print(caloriesInFruitThree); // {apple: [200, 650], pineapple: 150}

  final caloriesInFruitFour = {
    'apple': 200,
    'pineapple': 200,
    'watermelon': 200,
  };
  print(caloriesInFruitFour); // {apple: 200, pineapple: 200, watermelon: 200}

  // Accessing Key-Value Pairs
  final numberCaloriesInApple = caloriesInFruitOne['apple'];
  print(numberCaloriesInApple); // 200

  final numberCaloriesInAdple = caloriesInFruitOne['adple']; // invalid Key
  print(numberCaloriesInAdple); // null

  print(numberCaloriesInApple?.isEven); // true

  // Adding Elements to a Map
  caloriesInFruitOne['pear'] = 50; // Add a new unique value
  print(caloriesInFruitOne);

  // Updating an Element
  caloriesInFruitOne['pear'] = 100; // replace an existing value
  print(caloriesInFruitOne);

  // Removing Elements From a Map
  caloriesInFruitOne.remove('pear');
  print(caloriesInFruitOne);

  // Accessing Properties
  print(caloriesInFruitOne.isEmpty); // false
  print(caloriesInFruitOne.isNotEmpty); // true
  print(caloriesInFruitOne.length); // 3
  print(caloriesInFruitOne.keys); // (apple, pineapple, watermelon)
  print(caloriesInFruitOne.values); // (200, 150, 650)

  // Checking for Key or Value Existence
  print(caloriesInFruitOne.containsKey('apple')); // true
  print(caloriesInFruitOne.containsValue(1)); // false

  // Looping Over Elements of a Map
  //  for (var calories in caloriesInFruitOne) { // Error!
  //   print(caloriesInFruitOne[calories]);
  //  }

  // forEach
  for (var key in caloriesInFruitOne.keys) {
    print(caloriesInFruitOne[key]);
  }

  for (final entry in caloriesInFruitOne.entries) {
    print('${entry.key} -> ${entry.value}');
  }
}
