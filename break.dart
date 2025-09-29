import 'dart:io';

class Book {
  String title;
  String author;
  int year;
  bool isBorrowed;

  Book(this.title, this.author, this.year, {this.isBorrowed = false});

  void borrowBook() {
    if (isBorrowed) {
      throw Exception("Sorry, '$title' is already borrowed.");
    }
    isBorrowed = true;
  }

  void returnBook() {
    isBorrowed = false;
  }

  @override
  String toString() {
    return "$title by $author ($year) ${isBorrowed ? '[Borrowed]' : ''}";
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }
      
  

  List<Book> listAvailableBooks() {
    return books.where((book) => !book.isBorrowed).toList();
  }

}

void main() {
  var library = Library();

   library.addBook(Book("Things Fall Apart", "Chinua Achebe", 1958));
  library.addBook(Book("Purple Hibiscus", "Chimamanda Ngozi Adichie", 2003));
  library.addBook(Book("Americanah", "Chimamanda Ngozi Adichie", 2013));
  library.addBook(Book("Half of a Yellow Sun", "Chimamanda Ngozi Adichie", 2006));
  library.addBook(Book("The Beautiful Ones Are Not Yet Born", "Ayi Kwei Armah", 1968));

 

    
  }
       
       
    
  
