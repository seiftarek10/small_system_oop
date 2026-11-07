import 'package:train/book.dart';

abstract class Library {
  void borrow({required Book book});

  void returnBook({required Book book});

  void displayBooksInfo();
  void addNewBook({required Book book});
  List<Book> books = [
    Book(id: '1', name: 'Clean Code', price: 250.0),
    Book(id: '2', name: 'Flutter for Beginners', price: 300.0),
    Book(id: '3', name: 'Dart Programming', price: 180.0),
    Book(id: '4', name: 'The Pragmatic Programmer', price: 400.0),
    Book(id: '5', name: 'Design Patterns', price: 350.0),
    Book(id: '6', name: 'Effective Java', price: 320.0),
    Book(id: '7', name: 'Atomic Habits', price: 200.0),
    Book(id: '8', name: 'Rich Dad Poor Dad', price: 150.0),
    Book(id: '9', name: 'Introduction to Algorithms', price: 500.0),
    Book(id: '10', name: 'You Dont Know JS', price: 280.0),
  ];

  Book getBookById(int id);
}

class UnversityLibrary1 extends Library {
  @override
  void borrow({required Book book}) {
    if (book.isAvaliable) {
      book.isAvaliable = false;
    } else {
      print('This Book UnAvaliable Plz Choose Another Book');
    }
  }

  @override
  void returnBook({required Book book}) {
    book.isAvaliable = true;
  }

  @override
  void displayBooksInfo() {
    for (var book in super.books) {
      print(
        'ID: ${book.id} | Name: ${book.name} | Price: ${book.price} | Available: ${book.isAvaliable}',
      );
    }
  }

  @override
  void addNewBook({required Book book}) {
    super.books.add(book);
  }

  @override
  Book getBookById(int id) {
    return books.firstWhere((book) => book.id == id.toString());
  }
}

class UnversityLibrary2 extends Library {
  @override
  void borrow({required Book book}) {
    if (book.isAvaliable) {
      book.isAvaliable = false;
    } else {
      print('This Book UnAvaliable Plz Choose Another Book');
    }
  }

  @override
  void returnBook({required Book book}) {
    book.isAvaliable = true;
  }

  @override
  void displayBooksInfo() {
    for (var book in super.books) {
      print(
        'ID: ${book.id} | Name: ${book.name} | Price: ${book.price} | Available: ${book.isAvaliable}',
      );
    }
  }

  @override
  void addNewBook({required Book book}) {
    super.books.add(book);
  }

  @override
  Book getBookById(int id) {
    return books.firstWhere((book) => book.id == id.toString());
  }
}
