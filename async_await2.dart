void main() async {
    print("A resturant in a quenue");
    print("Buys water");
    await orderCoffee();
    print("Buys a juice");
    print("Order for water");
    print("Buys snacks");


}
Future<void> orderCoffee()async{
    print("order for coffee");
    print("Coffee takes time you have to wait");
    await Future.delayed(Duration(seconds:10));
    print("");
    print(" Your coffee is ready come and get it");
}