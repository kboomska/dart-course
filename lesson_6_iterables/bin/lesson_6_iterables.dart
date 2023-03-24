/// *******************************************************************************************
/// Introduction

/*
void main() {
  // a, b, c, d, e
  // 2, 4, 8, 16, 32

  final myList = ['a', 'b', 'c'];
  print(myList);

  for (final item in myList) {
    print(item);
  }

  final reversedList = myList.reversed;
  print(reversedList); // (c, b, a) - Iterable
  print(reversedList.toList()); // [c, b, a] - List
}
*/

/// *******************************************************************************************
/// Basic operations with Iterables

import 'squares.dart';

void main() {
  // Creating an Iterable
  // final myIterable = Iterable(); // Error!
  Iterable<String> myIterable = ['a', 'b', 'c'];

  // Accessing Elements
  final twoElement = myIterable.elementAt(1);
  print(twoElement);

  // Finding the First and Last Element
  print(myIterable.first);
  print(myIterable.last);

  // Getting the length
  print(myIterable.length);

  // Other important methods on Iterable
  // map
  // where
  // expand
  // contains
  // forEach
  // reduce
  // fold

  // 1 to 10,000: 1, 4, 9, 16
  Iterable<int> hundredSquare() sync* {
    // Synchronous generator (sync*)
    for (int i = 1; i < 100; i++) {
      yield i * i;
    }
  }

  // final squares = hundredSquare();
  // for (int square in squares) {
  //   print(square);
  // }

  final squares = HundredSquares();
  for (int square in squares) {
    print(square);
  }
}
