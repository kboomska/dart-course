/// *******************************************************************************************
/// Exercise 1

/*
void main() {
  for (int number = 1; number <= 100; number++) {
    if (number % 3 == 0 && number % 5 == 0) {
      print('Super Quiz');
    } else if (number % 3 == 0) {
      print('Super');
    } else if (number % 5 == 0) {
      print('Quiz');
    } else {
      print(number);
    }
  }
}
*/

/// *******************************************************************************************
/// Exercise 2

/*
void main() {
  int number = 236455;

  // print(number.toString().length);

  // Don't use .lenght

  int count = 1;
  while (number ~/ 10 != 0) {
    number ~/= 10;
    count++;
  }
  print(count); // 6
}
*/

/// *******************************************************************************************
/// Exercise 3

void main() {
  List<int> listOfYears = [1705, 1900, 1601, 2000];

  for (int year in listOfYears) {
    print((year / 100).ceil());
  }
}
