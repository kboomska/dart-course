/// *******************************************************************************************
/// Inheritance

void main() {
  var myCar = Car();
  myCar.carName = 'BMW';
  myCar.color = 'Red';
  myCar.start();
  myCar.open();

  print('');

  var myMoto = Moto();
  myMoto.type = 'Sportbike';
  myMoto.color = 'Green';
  myMoto.start();
  myMoto.roll();
}

// Create super class (parent)
class Vehicle {
  String? color;

  void start() {
    print('Has started');
  }
}

class Car extends Vehicle {
  String? carName;
  // String? color;

  // void start() {
  //   print('Has started');
  // }

  void open() {
    print('Open doors');
  }
}

class Moto extends Vehicle {
  String? type;
  // String? color;

  // void start() {
  //   print('Has started');
  // }

  void roll() {
    print('Rolled over in the air');
  }
}
