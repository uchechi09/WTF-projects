void main(){
// create a list of different vehicles
var car = Car ("Lexus 350", 160);
var bike = Bike ("Standfit Sports", 50);
var electricScooter = ElectricScooter("Spiro", 20);

//store them in a list
List<Vehicle> vehicles = [ car , bike , electricScooter];

for (var v in vehicles){
  v.move();

 if (v is Car) {
      v.refuel();

    } else if (v is ElectricScooter) {

      v.chargeBattery();

}
}
}
// abtract class vehicle
abstract class Vehicle{
String brand;
int speed;

Vehicle ({required this.brand , required this.speed});
void move();
}

//create two mixins

mixin Electric{
void chargeBattery(){
  print("The battery is still charging");
}
}
mixin FuelPowered{
void refuel(){
  print("The vechicle is going for a refuel");
}
}
// create concrete classes 
 class Car extends Vehicle with FuelPowered{
  Car(String brand , int speed) :super(brand: brand , speed: speed);

  @override
  void move() {
  print("The car ($brand) is moving at ($speed) km/h.");

  }
 } 
 
class Bike extends Vehicle{
  Bike(String brand , int speed) :super (brand: brand ,speed: speed);

 @override
  void move() {
  print("The Bike ($brand) is cycling at ($speed) km/h.");
}
}
class ElectricScooter extends Vehicle with Electric{
  ElectricScooter(String brand , int speed) :super (brand: brand ,speed: speed);

  @override
  void move() {
  print("The ElectricScooter ($brand) is rolling at ($speed) km/h.");

  }
}
