void main(){
var person1 = person("Grace", 20, 190);
print(person1.name);

var person2 = person("Chioma", 20, 190);
print(person2.name);

var person3 = person("Joy", 20, 190);
print(person3.name);


}
class person{
  String name;
  int age;
  int height;

  person(this.name, this.age, this.height);
}
