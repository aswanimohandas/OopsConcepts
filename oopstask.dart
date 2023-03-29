
//  1. Create an abstract class 'Vehicle' with an abstract method 'start()'. Create two
// subclasses 'Car' and 'Bike' that inherit the 'Vehicle' class and implement the 'start()'
// method differently.

abstract class Vehicle{
  start();
}
class Car implements Vehicle{
  @override
  start(){
    print('Started Car');
  }
}
class Bike implements Vehicle{
  @override
  start(){
    print('Started Bike');
  }
}
 void main(){
   Car car = Car();
   car.start();
   Bike bike = Bike();
   bike.start();
 }
// ********************************************************************************************
// 2. Create a superclass 'Shape' with a method 'draw()' and two subclasses 'Circle'
// and 'Rectangle' that inherit the 'Shape' class. Implement method overloading in the
// 'Circle' class and method overriding in the 'Rectangle' class.
class Shape{
  draw(){
    print('Super class');
  }
}
class Circle extends Shape{
 // Function overloading is not supported in Dart.
   area(){
     print('Circle Area is 3.14* r*r');
    
    }
//   area([int r]){
//     print('Circle Area is : ${3.14* r*r}');
  
//   }
}
class Rectangle extends Shape{
  @override
  draw(){
    print('Child class');
    super.draw();
  }
}
 void main(){
  Circle circle = Circle();
  circle.area();
  circle.area(2);
  Rectangle rectangle = Rectangle();
  rectangle.draw();
 }
// ********************************************************************************************
//3. Create a superclass 'Animal' with a protected method 'sound()'. Create two
// subclasses 'Cat' and 'Dog' that inherit the 'Animal' class and call the 'sound()' method
// from within their own method.
class Animal{
  
  sound(){
    print(' Animal Sound ');
    print('______________ ');
  }
}
class Cat extends Animal{
 @override
  sound(){
    super.sound();
    print('Sound of Cat is Meoww');
  }
}
class Dog extends Animal{
   @override
  sound(){
    super.sound();
    print('Sound of Dog  is Boww');
  }
}
 void main(){
  Dog dog = Dog();
  dog.sound();
 }
// ********************************************************************************************
//4. Create a class 'Employee' that contains private data members 'name' and 'salary',
// and a public method 'getSalary()'. Try to create a subclass of the 'Employee' class
// and create a method in child class to print details of the employee.

class Employee{
  String _name;
   double _salary;
  Employee(this._name,this._salary);
  getSalary(){
    print('Salary is $_salary');
  }
}
class EmployeeSub extends Employee{
  EmployeeSub(super._name , super._salary); 
  printDetails(){
    print('Name is ${super._name} ');
    super.getSalary();
  }
}
void main(){
  EmployeeSub employeeSub = EmployeeSub('erert',233243);
  employeeSub.printDetails();
}
// ********************************************************************************************
//5. Create a superclass 'Animal' with a method 'move()'. Create two interfaces 'Swim'
// and 'Walk' with the same method 'move()'. Create a subclass 'Fish' that implements
// the 'Swim' interface and a subclass 'Lion' that implements the 'Walk' interface.
// Finally, create a class 'SeaLion' that inherits both 'Fish' and 'Lion' classes and
// overrides the 'move()' method.

class Animal1{
  move(){
    print('Animal Move');
  }
}
abstract class Swim{
move();
}
abstract class Walk{
  move();
}
class Fish implements Swim{
  @override
  move(){
    print('Fish is Swimming');
  }
}
class Lion implements Walk{
   @override
  move(){
    print('Lion is Walking');
  }
}
class SeaLion extends Fish with Lion{
  @override
  move(){
    print('SeaLion can Swim and Walk');
  }
}
 void main(){
   SeaLion seaLion = SeaLion();
   seaLion.move();
   Lion lion = Lion();
   lion.move();
   Fish fish = Fish();
   fish.move();
 }













