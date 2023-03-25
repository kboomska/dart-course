/// *******************************************************************************************
/// try / on / catch / finally

/*
void main() {
  // Exception
  // Error

  try {
    // FormatException
    var list = [double.parse('3,14'), 2, 3];
    print('Result: $list');

    // RangeError
    // var list = [double.parse('3.14'), 2, 3];
    // print('Result: ${list[5]}');
  } on RangeError {
    print('Out of bound of list');
  } catch (e, s) {
    print('The Exception: $e');
    print('Stack Trace: $s');
  } finally {
    print('This is Finally and is always executed');
  }
}
*/

/// *******************************************************************************************
/// Throw

void main() {
  try {
    print(factorial(-5));
  } catch (e) {
    print(e);
  } finally {
    // Code
  }
}

class FactorialException implements Exception {
  @override
  String toString() {
    return 'Input number must be more than zero';
  }
  // String errorMessage() {
  //   return 'Input number must be more than zero';
  // }
}

int factorial(int n) {
  if (n < 1) throw FactorialException();
  int fact = 1;
  for (int i = 2; i <= n; i++) {
    fact *= i;
  }
  return fact;
}
