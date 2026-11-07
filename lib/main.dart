import 'dart:io';

import 'package:train/book.dart';
import 'package:train/library.dart';
import 'package:train/person.dart';

void main() {
  Library l1 = UnversityLibrary1();
  Person? person;
  person = chooseType();

  print('Choose Book');
  Book? book;
  l1.displayBooksInfo();

  book= getBookById(l1);

  if(book!.isAvaliable==false){
    print('This Book is Un Avaliable Plz Choose Another Book');
  }else{
    print('Done');
    book.isAvaliable=false;
  }
  l1.displayBooksInfo();
}

Person? chooseType() {
  while (true) {
    print('Press 1 For Teacher 2 For Student');
    String personType = stdin.readLineSync()!;
    if (personType.trim() == '1') {
      return Teacher(name: 'Abdo', age: 45);
    } else if (personType.trim() == '2') {
      return Student(name: 'Ahmed', age: 22);
    } else {
      print('Enter Valid Choise');
    }
  }
}

Book? getBookById(Library l1) {
  while (true) {
    int bookId = int.parse(stdin.readLineSync()!);
    if (bookId <= 0 || bookId > 10) {
      print('Choose Valid Book ID');
    } else {
      return l1.getBookById(bookId);
    }
  }
}
