void main(){
  var i = [2,3,6,1,7,4];

try {
  print(i[21]);
 } catch (error) {
  
  print("Hi you are trying to access an invalid index");
}
print("Hello I am here");
}