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
