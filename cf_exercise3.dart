// Create a program that finds the largest number in a list
void main(){
var list = [2100,3400,9239,9826,738472];

int largestNumber = list[0];

  for(var i in list){
    if(i > largestNumber){
      largestNumber = i;
    }
  }
print(largestNumber);
}

