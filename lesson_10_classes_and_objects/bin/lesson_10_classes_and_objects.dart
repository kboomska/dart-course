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
/*
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
*/

/// *******************************************************************************************
/// Implicit interfaces

/*
void main() {
  var vehicle = Vehicle('Ford', 100);
  vehicle.move();
  vehicle.speedMove();
}

class Car {
  String name;
  Car(this.name);

  void move() {
    print('The $name has started');
  }
}

class Train {
  int? speed;

  void speedMove() {
    print('The Train has started with $speed');
  }
}

class Vehicle implements Car, Train {
  String name; // name from Car

  int? speed; // speed from Train

  Vehicle(this.name, this.speed);

  void move() {
    print('The $name has started');
  }

  void speedMove() {
    print('With speed: $speed');
  }
}
*/

/// *******************************************************************************************
/// Mixins

/*
void main() {
  var vh = Vehicle('Ford', 90);
  vh.move();

  // var train = Train();
  // train.speed = 40;
  // train.speedMove();
}

class Car {
  String name;

  Car(this.name);

  void move() {
    print('The $name has started');
  }
}

// To implement a Mixin, create a class that extends Object and declares no constructors.
mixin Train {
  int? speed;

  void speedMove() {
    print('The Train has started with $speed');
  }
}

class Vehicle extends Car with Train {
  Vehicle(name, sp) : super(name) {
    speed = sp;
  }
}
*/

/// *******************************************************************************************
/// Abstract Classes

/*
void main() {
  // Vehicle car = Vehicle(); // Can’t be instantiated.

  Car car = Car();
  car.move();

  print('');

  Train train = Train();
  train.move();
}

// This class is declared abstract and thus
// can't be instantiated.
abstract class Vehicle {
  void move(); // Abstract method.
}

class Car extends Vehicle {
  void move() {
    print('The Car moves on the road');
  }
}

class Train extends Vehicle {
  void move() {
    print('The train moves on the road');
  }
}
*/

/// *******************************************************************************************
/// Generics

void main() {
  Car car = Car('1', 'BMW');
  print(car.id.runtimeType);
  car.move('100');
  // int id = car.id;
  // print(id);

  print('');

  Car car1 = Car(1, 'BMW');
  print(car1.id.runtimeType);
  car1.move(100);
}

class Car<T> {
  // int id;
  // dynamic id;
  T id;
  String carName;

  Car(this.id, this.carName);

  void move<T>(T speed) {
    print('The $carName. ID number: $id. Speed: $speed');
  }
}
