void main(){
var person1 = person(
age: 10,
name: "Grace",
);
print("The name is ${person1.name} the age is ${person1.age} and the height is ${person1.height}");
}
class person{
  String name;
  int age;
  int height;

person({required this.name, required this.age, this.height = 0});
}