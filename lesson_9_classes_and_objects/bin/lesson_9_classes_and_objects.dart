/// *******************************************************************************************
/// Class and Object definition

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
