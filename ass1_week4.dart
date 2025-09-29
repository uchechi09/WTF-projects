import 'dart:io';

void main() {
  // Create a new library
  Library library = Library();

  // Add 5 books to the library
  library.addBook(Book("1984", "George Orwell", 1949));
  library.addBook(Book("To Kill a Mockingbird", "Harper Lee", 1960));
  library.addBook(Book("The Great Gatsby", "F. Scott Fitzgerald", 1925));
  library.addBook(Book("The Hitchhiker's Guide to the Galaxy", "Douglas Adams", 1979));
  library.addBook(Book("The Lord of the Rings", "J.R.R. Tolkien", 1954));

  print(" Welcome to the Library");

  // Show available books
  print("Available Books:");
  library.listAvailableBooks();

  // Search for a book
  print("Enter a keyword to search for a book: ");
  String? keyword = stdin.readLineSync();
  if (keyword != null && keyword.isNotEmpty) {
    library.searchByTitle(keyword);
  }

  // Borrow a book
  print("Enter the title of the book you want to borrow: ");
  String? borrowTitle = stdin.readLineSync();
  if (borrowTitle != null && borrowTitle.isNotEmpty) {
    library.borrowBook(borrowTitle);
  }

  // Return a book
  print("Enter the title of the book you want to return: ");
  String? returnTitle = stdin.readLineSync();
  if (returnTitle != null && returnTitle.isNotEmpty) {
    library.returnBook(returnTitle);
  }

  print("Thank you for using the Library System!");
}

// Book class (represents a single book)
class Book {
  String title;
  String author;
  int year;
  bool isBorrowed = false; 

  // Constructor
  Book(this.title, this.author, this.year);
}

// Library class (manages a collection of books)
class Library {
  List<Book> books = [];

  // Add a new book to the library
  void addBook(Book book) {
    books.add(book);
  }

  // Show all available books
  void listAvailableBooks() {
    for (var book in books) {
      if (!book.isBorrowed) {
        print("- ${book.title} by ${book.author} (${book.year})");
      }
    }
  }

  // Search books by title keyword
  void searchByTitle(String keyword) {
    var found = false;
    for (var book in books) {
      if (book.title.toLowerCase().contains(keyword.toLowerCase())) {
        print("- ${book.title} by ${book.author} (${book.year})");
        found = true;
      }
    }
    if (!found) {
      print("No books found with the keyword '$keyword'.");
    }
  }

  // Borrow a book by title
  void borrowBook(String title) {
    for (var book in books) {
      if (book.title.toLowerCase() == title.toLowerCase()) {
        if (book.isBorrowed) {
          print("The book '${book.title}' is already borrowed.");
        } else {
          book.isBorrowed = true;
          print("You borrowed '${book.title}'.");
        }
        return; // stop searching once found
      }
    }
    print("Book not found in the library.");
  }

  // Return a book by title
  void returnBook(String title) {
    for (var book in books) {
      if (book.title.toLowerCase() == title.toLowerCase()) {
        if (book.isBorrowed) {
          book.isBorrowed = false;
          print("You returned '${book.title}'.");
        } else {
          print("The book '${book.title}' was not borrowed.");
        }
        return;
      }
    }
    print("Book not found in the library.");
  }
}
 