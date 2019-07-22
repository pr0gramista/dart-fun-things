class Point {
  final num x, y;

  Point(this.x, this.y) {
    print(this.x); // Here x is already assigned
  }

  Point.zero() :
    x = 0,
    y = 0;

  /*
  Point.zero() {
    this.x = 0;
    this.y = 0;
  }

  this won't work, lol
  */

  Point.fromJson(Map data) :
    x = data['x'],
    y = data['y'];

  // Yes...
  @override
  String toString() {
    return 'Point (x: $x, y: $y)';
  }
}

class Point3D extends Point {
  final num z;

  Point3D(x, y, this.z) : super(x, y);

  @override
  String toString() {
    return 'Point3D (x: $x, y: $y, z: $z)';
  }
}

// const a = Point.zero(); // This also doesn't work!
final house = new Point3D(5, 4, 1); // new can be omitted
final origin = Point.zero();
final city = Point.fromJson({ "x": 10, "y": 2});

main() {
  print(house);
  print(origin);
  print(city);
}
