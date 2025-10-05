// create a vowel counter
void main(){
var message = "Hello misss uchechi, how are you doing";
const vowels = ["A", "E", "I", "O", "U"];
var vowelCount = 0;
for(var i = 0; i<=message.length-1; i++){
  var character = message[i];
  if(vowels.contains(character.toUpperCase())){
    vowelCount++;
  }
}
print("Number of vowels is $vowelCount");
}