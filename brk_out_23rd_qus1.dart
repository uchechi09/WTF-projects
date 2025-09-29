void main(){
var car1 = Car(brand: "Toyota", model: "Corolla");
var car2 = Car(brand: "Honda", model: "Accord", year: 2015);
car1.brand = "Ford";

  print("Car 1: ${car1.brand}, ${car1.model}, ${car1.year}");
  print("car 2: ${car2.brand}, ${car2.model}, ${car2.year}");

}
class Car{
  String brand;
  int year;
  String model;
  
  Car({required this.brand, required this.model, this.year = 1990});
  void calculatecarage() {
    print("The age of this car is ${2025 - this.year} years");
  }
}