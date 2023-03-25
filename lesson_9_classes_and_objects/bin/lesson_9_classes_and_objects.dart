/// *******************************************************************************************
/// Class and Object definition

/*
void main() {
  Car myCar = Car();
  myCar.carName = 'BMW';
  myCar.color = 'Black';
  myCar.start();

  Car anotherCar = Car();
  anotherCar.carName = 'Ford';
  anotherCar.color = 'Blue';
  anotherCar.start();
  anotherCar.stop();
}

class Car {
  String? carName;
  var color;

  void start() {
    print('The $color $carName has started.');
  }

  void stop() {
    print('The $color $carName has stopped now.');
  }
}
*/

/// *******************************************************************************************
/// Constructors

/*
void main() {
  // Car myCar = Car(); // Whith default Constructor

  Car myCar = Car('BMW', color: 'Black');
  myCar.start(); // The Black BMW has started.

  Car anotherCar = Car('BMW');
  anotherCar.start(); // The Red BMW has started.
}

class Car {
  String? carName;
  var color;

  // Default Constructor
  // Car() {}

  // Car(String carName, var color) {
  //   this.carName = carName;
  //   this.color = color;
  // }

  Car(this.carName, {this.color = 'Red'});

  void start() {
    print('The $color $carName has started.');
  }

  void stop() {
    print('The $color $carName has stopped now.');
  }
}
*/

/// *******************************************************************************************
/// Named Constructors

void main() {
  Car myCar = Car('BMW', 'Black');
  myCar.start();

  Car namedCar = Car.named();
  namedCar.start();

  Car anotherCar = Car.fromColor('GREY');
  anotherCar.start();
}

class Car {
  String? carName;
  var color;

  // Named Constructor
  Car.named() {
    carName = 'FORD';
    color = 'GREEN';
  }

  // Named Constructor
  Car.fromColor(var color) {
    carName = 'MERSEDES';
    this.color = color;
  }

  Car(this.carName, this.color);

  void start() {
    print('The $color $carName has started.');
  }

  void stop() {
    print('The $color $carName has stopped now.');
  }
}
