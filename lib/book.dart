import 'package:train/person.dart';

class Book {
  final String id;
  final String name;
  final double price;
  Person? person;

  bool _isAvaliable = true;
  Book({required this.id, required this.name, required this.price, this.person});

  set isAvaliable(bool status) {
    _isAvaliable = status;
  }

  bool get isAvaliable => _isAvaliable;
}
