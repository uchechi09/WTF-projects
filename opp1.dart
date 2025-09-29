void main(){
  var oak = Tree();
oak.producefruits(0);

  var mango = Tree();
  mango.producefruits(200);

  var orange = Tree();
  orange.producefruits(1000);

}

class Tree {
  String root = "root";
  String branches = "branches";
  int leafs = 200;

void producewood(){
  print("produce wood");

}
void producefruits(int numberoffruits){
  print("produce $numberoffruits fruits");

}
}
