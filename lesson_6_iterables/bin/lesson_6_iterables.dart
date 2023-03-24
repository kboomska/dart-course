/// *******************************************************************************************
/// Introduction

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
