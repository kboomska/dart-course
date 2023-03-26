/// *******************************************************************************************
/// Future

/*
import 'dart:html';

void main() {
  print('The Main program: Starts');
  printFileContent();
  print('The Main program: Ends');
}

downloadFile() {
  Future<String> result = Future.delayed(Duration(seconds: 5), () {
    return HttpRequest.getString('https://dart.dev/robots.txt');
  });
  return result;
}

printFileContent() {
  Future<String> fileContent = downloadFile();
  fileContent.then((resultString) {
    print('The content on the file is --> $resultString');
  }).catchError((error) => print('The file not found'));

  // Instance of '_Future<String>'
  // print('The content on the file is --> $fileContent');
}
*/

/// *******************************************************************************************
/// async / await

import 'dart:html';

void main() {
  print('The Main program: Starts');
  printFileContent();
  print('The Main program: Ends');
}

downloadFile() {
  Future<String> result = Future.delayed(Duration(seconds: 5), () {
    return HttpRequest.getString('https://dart.dev/robots.txt');
  });
  return result;
}

printFileContent() async {
  try {
//     String time = await HttpRequest.getString('https://www.deepl.com/robots.txt');
//     print(time);

    String fileContent = await downloadFile();
    print('The content on the file is --> $fileContent');

//     String time1 = await HttpRequest.getString('https://www.deepl.com/robots.txt');
//     print(time1);
  } catch (error) {
    print('Catching error: $error');
  }
}
