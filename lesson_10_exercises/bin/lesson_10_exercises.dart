/// *******************************************************************************************
/// Exercise 1

void main() {
  Cuboid cuboid = Cuboid(1, 2, 3);
  print('Cuboid Volume: ${cuboid.volume}');
  print('Cuboid Surface Area: ${cuboid.surfaceArea}');

  print('');

  Cube cube = Cube(2);
  print('Cube Volume: ${cube.volume}');
  print('Cube Surface Area: ${cube.surfaceArea}');
}

class Cuboid {
  final int length;
  final int width;
  final int height;

  Cuboid(this.length, this.width, this.height);

  int get surfaceArea {
    return 2 * (length * width + width * height + height * length);
  }

  int get volume {
    return length * width * height;
  }
}

class Cube extends Cuboid {
  Cube(int length) : super(length, length, length);
}
