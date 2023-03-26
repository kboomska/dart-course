/// *******************************************************************************************
/// Inheritance

/*
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
*/

/// *******************************************************************************************
/// Inheritance and Constructors

/*
void main() {
  // var myCar = Car();
  // myCar.carName = 'BMW';
  // myCar.color = 'Red';

  var myCar = Car('BMW', 'Red');
  myCar.start();
  myCar.open();
}

class Vehicle {
  String? color;

  Vehicle.fromColor(var color) {
    this.color = color;
    print('Call Vehicle.fromColor: $color Constructor');
  }

  void start() {
    print('Has started');
  }
}

// Subclasses don’t inherit constructors from their superclass.
class Car extends Vehicle {
  String? carName;

  Car(String carName, String color) : super.fromColor(color) {
    this.carName = carName;
    print('Call of Car. Name: $carName, Color: $color');
  }

  void open() {
    print('Open doors');
  }
}
*/

/// *******************************************************************************************
/// Overriding methods, getters and setters

void main() {
  var myCar = Car('BMW', 100, 'White');
  myCar.start();
}

class Vehicle {
  String? color;

  Vehicle.fromColor(var color) {
    this.color = color;
    print('Call Vehicle.fromColor: $color Constructor');
  }

  void start() {
    print('Has started');
  }
}

class Car extends Vehicle {
  String? carName;
  int? speed;

  Car(String carName, int speed, String color) : super.fromColor(color) {
    this.carName = carName;
    this.speed = speed;
    print('Call of Car. Name: $carName, Color: $color');
  }

  String? get color => super.color;

  void set color(String? value) {
    if (value == 'Black') {
      throw ArgumentError('Please, set other color');
    }

    super.color = color;
  }

  @override
  void start() {
    print('The $color $carName');
    // print('Has started');
    super.start(); // Has started
    print('Speed: $speed');
  }

  void open() {
    print('Open doors');
  }
}
