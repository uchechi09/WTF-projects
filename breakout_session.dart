void main(){


}

class Book{
  String title;
  String author;
  int year;
  bool isBorrowed;

  Book(this.title, this.author, this.year, {this.isBorrowed = false});

void borrowbook(){
  if (isBorrowed){
    print("The $title is borrowed");
  }
    isBorrowed = true;
  }
void returnbook(){
  isBorrowed = false;
}

class Library{
  List<Book> books = [];

  void addbook(book book){
    List<Book> searchBytitle();
    return book

  }
}




}
