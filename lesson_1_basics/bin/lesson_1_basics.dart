void main() {
  // Downcasting
  num someNumber = 5;
  final someInt = someNumber as int;
  print(someInt.isEven); // false

  // final someDouble = someNumber as double;
  // print(someDouble);  // Error: 5 isn't a double!

  final someDouble = someNumber.toDouble();
  print(someDouble); // 5.0

  // String -> int
  var myInt = int.parse('10');
  print(myInt); // 10

  // String -> double
  var myDouble = double.parse('5.5');
  print(myDouble); // 5.5

  // int -> String
  String s1 = 10.toString();
  String s2 = myInt.toString();

  // double -> String
  String s3 = 3.14159.toString();
  String s4 = 3.14159.toStringAsFixed(2);
  print(s4); // 3.14
}
