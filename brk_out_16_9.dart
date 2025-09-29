import 'dart:io';
import 'dart:math';


void main(){
int numberToBeGuess = Random().nextInt(100) + 1;
print("Hello, this is women techters fellowship console game");
print("Guess a number between 1 and 100");

while(true){

String? userGuess = stdin.readLineSync();
if(userGuess == null){
print("You did not enter a number Guess again");
continue;
}
int userGuessAsNumber = int.tryParse(userGuess)!;

If(userGuessAsNumber < numberToBeGuessed){
  print("Warmer");
  }else if(userGuessAsNumber > numberToBeGuessed){
print("Colder");
  }else{
    print("Correct");
    break;
  }
}

}