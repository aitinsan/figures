//абстрактный класс для всех фигур
import 'dart:math';

abstract class GeoFigures {
  double calculateArea();
  double calculatePerimetr();
}

//класс прямоугольника наследуется
class RectangleClass extends GeoFigures {
  double width;
  double heigth;
  RectangleClass(this.width, this.heigth);

  @override
  double calculateArea() {
    return width * heigth;
  }

  @override
  double calculatePerimetr() {
    return (width + heigth) * 2;
  }
}

//класс круга
class CircleClass extends GeoFigures {
  double radius;
  CircleClass(this.radius);
  @override
  double calculateArea() {
    return 2 * pi * radius; // подключил библиотеку math на этом моменте
  }

  @override
  double calculatePerimetr() {
    return radius * radius * pi;
  }
}

//класс треугольника
class TriangleClass extends GeoFigures {
  double firstSide, secondSide, thirdSide;
  TriangleClass(this.firstSide, this.secondSide, this.thirdSide);
  @override
  double calculatePerimetr() {
    return firstSide + secondSide + thirdSide;
  }

  @override
  double calculateArea() {
    double p = calculatePerimetr() / 2; //полупериметр
    return sqrt(p * (p - firstSide) * (p - secondSide) * (p - thirdSide));
  }
}

//класс трапеции
class TrapezoidClass extends GeoFigures {
  double firstSide, secondSide; // паралельные стороны
  double thirdSide, fourthSide; // боковые стороны
  TrapezoidClass(
      this.firstSide, this.secondSide, this.thirdSide, this.fourthSide);
  @override
  double calculatePerimetr() {
    return firstSide + secondSide + thirdSide + fourthSide;
  }

  @override
  double calculateArea() {
    double sideOfTriangle = firstSide -
        secondSide; //переменная для того чтобы высчитать плошадь треугольника который внутки трапеции
    if (sideOfTriangle.isNegative) {
      sideOfTriangle =
          sideOfTriangle * (-1.0);
          print(sideOfTriangle); //делаем позитивным если негативное число
    }
    double h =
        TriangleClass(thirdSide, fourthSide, sideOfTriangle).calculateArea() *
            2 /
            sideOfTriangle; //find height
    return h * (firstSide + secondSide) / 2;
  }
}
