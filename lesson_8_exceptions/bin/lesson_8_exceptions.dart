/// *******************************************************************************************
/// try / on / catch / finally

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
