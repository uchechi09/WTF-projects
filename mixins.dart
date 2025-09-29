void main(){
Person().walk();
Duck().walk();
}

class Person with Actions{
  String name = "Grace";
}

class Duck with Actions{
  String name = "Alex";
}

mixin Actions{
  void walk(){
    print("I can walk");
  }
  void Swim(){
    print("I can walk");
  }
}
