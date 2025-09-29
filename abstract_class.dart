void main(List<String>args){
  
var teacher = Teacher(name: "Grace", age: 22, course: "Maths");
teacher.introduction();
teacher.teach();

}
class Teacher extends Person{
String course;

Teacher({
  required this.course,
  required super.age,
  required super.name
});
void teach(){
  print("I teach $course");
}

void introduction(){
  print("My name is $name\nMy age $age");
}
}

abstract class Person{
  String name;
  int age;

  Person ({required this.name, required this.age});
  void introduction();

}