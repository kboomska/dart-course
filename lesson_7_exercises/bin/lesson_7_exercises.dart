/// *******************************************************************************************
/// Exercise 1

/*
List<String> alphabeth = [
  "a",
  "b",
  "c",
  "d",
  "e",
  "f",
  "g",
  "h",
  "i",
  "j",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "q",
  "r",
  "s",
  "t",
  "u",
  "v",
  "w",
  "x",
  "y",
  "z"
];

void main() {
  List<String> wordValue = ['abc', 'abc abc']; // [6, 24]
  List<String> wordValue2 = ['dart', 'abc', 'good luck']; // [43, 12, 264]

  print(getWordsMultiplicationList(wordValue2));
}

int getLettersSum(String word) {
  int sum = 0;
  for (int i = 0; i < word.length; i++) {
    String letter = word[i];
    int alphabethPosition = alphabeth.indexOf(letter) + 1;

    sum += alphabethPosition;
  }

  return sum;
}

List<int> getWordsMultiplicationList(List<String> list) {
  List<int> resultList = [];
  int result = 0;

  for (int i = 0; i < list.length; i++) {
    result = getLettersSum(list[i]) * (i + 1);
    resultList.add(result);
  }

  return resultList;
}
*/

/// *******************************************************************************************
/// Exercise 2

/*
void main() {
  List<String> listOfString = ['a', 'ab', 'abc']; // 6
  List<String> listOfString2 = ['abcde', 'ab', 'abc']; // 10
  List<String> listOfString3 = []; // 0

  int sum = 0;
  listOfString3.forEach((str) => sum += str.length);
  print(sum);
}
*/

/// *******************************************************************************************
/// Exercise 3

void main() {
  List<int> listOfInt = [1, -10, 9, -1]; // 10
  List<int> listOfInt2 = [-1, -2, -3]; // 0
  List<int> listOfInt3 = []; // 0
  List<int> listOfInt4 = [1, 2]; // 3

  int sum = 0;
  listOfInt.forEach((element) {
    if (element > 0) {
      sum += element;
    }
  });
  print(sum);
}
