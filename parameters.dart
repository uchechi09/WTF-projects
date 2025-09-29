void main() {
  shoutOut("I love what you do I am your fan", "Grace" ,"Joy","6:00am");
}

void shoutOut(
  String message, [String name = "Grace",String fromWho = "sender", String time = "current time",]) {
  print("Hello $name, $fromWho sends you a message, $message $time");
}
