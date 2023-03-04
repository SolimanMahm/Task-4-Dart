void main(List<String> arguments) {
  // Q1
  Car car = Car(name: 'Audi', model: 'e-tron', color: 'blue');
  print(car.name);
  print(car.model);
  print(car.color);

  print('*' * 50);

  // Q2
  Student Bert = Student('Bert', 'Soliman', 95);
  Bert.Print();
  Student Ernie = Student('Ernie', 'Soliman', 85);
  Ernie.Print();

  print('*' * 50);

  // Q3
  Rectangle rectangle = Rectangle(width: 5, height: 6, color: 'red');
  print(
      'The area of rectangle = ${rectangle.area()} and color is ${rectangle.color}');

  Square square = Square(
      width: 5,
      height: 5,
      color: 'black'); // width = 5 , height = 7 => Exception
  print('The area of square = ${square.area()} and color is ${square.color}');

  print('*' * 50);

  // Q4
  Kalashnikov kalashnikov = Kalashnikov(
      name: 'kalashnikov', height: 50, price: 50, shots: 50, color: 'green');
  Arbj arbj =
      Arbj(name: 'arbj', height: 40, price: 40, shots: 40, color: 'red');
}

class Car {
  String name, model, color;

  Car({required this.name, required this.model, required this.color});
}

class Student {
  final String firstName, lastName;
  int grade;

  Student(this.firstName, this.lastName, this.grade);

  void Print() {
    print(
        "The firstName is ${this.firstName}, lastName is ${this.lastName} and grade equal ${this.grade}");
  }
}

class Shape {
  double width, height;
  String color;

  Shape(this.width, this.height, this.color);

  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  Rectangle(
      {required double width, required double height, required String color})
      : super(width, height, color);

  @override
  double area() {
    return width * height;
  }
}

class Square extends Shape {
  Square({required double width, required double height, required String color})
      : super(width, height, color) {
    if (width != height) throw 'width must be equal height';
  }

  @override
  double area() {
    return width * height;
  }
}

class Weapon {
  int shots;
  String color, name;

  Weapon(this.name, this.shots, this.color);
}

class Kalashnikov extends Weapon {
  double height, price;

  Kalashnikov(
      {required String name,
      required this.height,
      required this.price,
      required int shots,
      required String color})
      : super(name, shots, color);
}

class Arbj extends Weapon {
  double height, price;

  Arbj(
      {required String name,
      required this.height,
      required this.price,
      required int shots,
      required String color})
      : super(name, shots, color);
}
