void main(){
runasynchronusly();
print("main flow");

var x = 1;
while(x <= 10){
print(x);
x++;

}
print("still on the main flow");

}
Future<void> runasynchronusly()async {
print("In async functions");

await Future.delayed(Duration(seconds: 10));

var x = 1;
while(x <= 10){
  print("async loop" +x.toString());
  x++;
}
}