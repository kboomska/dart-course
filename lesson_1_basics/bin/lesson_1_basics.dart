void main() {
  // Numbers (num -> int and double)
  double myDouble = 10.5;
  double anotherDouble = 10;
  print(anotherDouble);

  // String (UTF - 16)
  String myName = 'Aleksey';
  String mySurname = 'Kuzmin';

  String name = 'What\'s your name?';

  String myFio = '''
  Aleksey
  Kuzmin
  ''';
  print(myFio);

  String personInfo = 'I\'m $myName and my surname ${mySurname.toUpperCase()}';
  print(personInfo);
  print(personInfo[0]); // I

  // bool
  var a = true;
  bool b = false;

  // Rune (UTF - 32)
  Runes hello = Runes('Hello Dart');
  print(hello); // (72, 101, 108, 108, 111, 32, 68, 97, 114, 116)

  // \uXXXX
  var input = Runes('\u2665 \u{1f600}');
  print(input); // (9829, 32, 128512)
  print(String.fromCharCodes(input)); // ♥ 😀

  // Symbol
  var mySumbol = #myApi;
  print(mySumbol); // Symbol("myApi")

  // Null
}
