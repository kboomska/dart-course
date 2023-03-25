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

/*
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
*/

/// *******************************************************************************************
/// Redirecting Constructors

/*
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
  // Car.named() {
  //   carName = 'FORD';
  //   color = 'GREEN';
  // }

  // Delegates to the main constructor
  Car.named() : this('FORD', 'GREEN');

  // Named Constructor
  // Car.fromColor(var color) {
  //   carName = 'MERSEDES';
  //   this.color = color;
  // }

  // Delegates to the main constructor
  Car.fromColor(var color) : this('MERSEDES', color);

  // The main constructor for this class
  Car(this.carName, this.color);

  void start() {
    print('The $color $carName has started.');
  }

  void stop() {
    print('The $color $carName has stopped now.');
  }
}
*/

/// *******************************************************************************************
/// Initializer list

/*
void main() {
  var myCar = Car(name: 'BMW', per: 24.6);
  myCar.infoCar();
}

class Car {
  String carName;
  double percentWay;

  Car({required String name, required double per})
      : carName = name,
        percentWay = per.roundToDouble() {
    print('Other work');
    percentWay = 100; // Overwrote the value from Initializer list
  }

  void infoCar() {
    print('The $carName drove $percentWay% of the way.');
  }
}
*/

/// *******************************************************************************************
/// Getters and Setters

void main() {
  var myCar = Car();
  myCar.carName = 'Ford'; // Implicit Setter
  print(myCar.carName); // Implicit Getter

  myCar.percentage = -23.5; // Calling own Setter
  print(myCar.percentage); // Calling own Getter
}

class Car {
  String? carName; // Public
  double _percentWay = 0; // Private

  set percentage(double per) {
    _percentWay = (per > 100 || per < 0) ? _percentWay = 0 : _percentWay = per;
  }

  double get percentage {
    return _percentWay;
  }
}
