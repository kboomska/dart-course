import 'dart:io';

/// *******************************************************************************************
/// Exercise 1

void main() {
  List list = [60, 999, 14, "dart1", 45, 95, "dart", 1];

  var variableOne = 'dart';
  var variableTwo = 15;

  // print(list.contains(variableOne)); // true
  // print(list.contains(variableTwo)); // false

  // Don't use .indexOf and .contains

  bool contain = false;
  for (var item in list) {
    if (item == variableOne) {
      contain = true;
    }
  }
  print(contain);
}
