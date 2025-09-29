void main(){

var camry = Car("Toyota" , "camry", 2020);
var Coralla = Car("Toyota" , "Camry", 2021);
var Lexus = Car("Lexus" , "Rx 350", 2022);

print("Car 1: ${camry.brand}, ${camry.type}, ${camry.year}, year");
print("car 2: ${Coralla.brand}, ${Coralla.type}, ${Coralla.year}, year");
print("car 3: ${Lexus.brand}, ${Lexus.type}, ${Lexus.year}, year");

}
class Car{
  String brand = "Toyota";
  String type = "Camry";
  int year = 2020;
}


Car(this.brand, this.type, this.year);
