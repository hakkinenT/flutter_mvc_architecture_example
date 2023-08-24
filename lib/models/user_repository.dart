import 'package:uuid/uuid.dart';

import 'user.dart';

class UserRepository {
  final List<User> _users = [
    User(
        name: "José Alfredo",
        birthDate: DateTime(1998, 3, 5),
        phone: "(79) 9 9999-9999",
        email: "jose@gmail.com"),
    User(
        name: "Maria Claúdia",
        birthDate: DateTime(1997, 10, 6),
        phone: "(79) 9 9999-9999",
        email: "maria@gmail.com"),
    User(
        name: "Paulo Antônio",
        birthDate: DateTime(1996, 2, 15),
        phone: "(79) 9 9999-9999",
        email: "paulo@gmail.com"),
    User(
        name: "Isabel Maria",
        birthDate: DateTime(1995, 11, 25),
        phone: "(79) 9 9999-9999",
        email: "isabel@gmail.com"),
  ];

  List<User> get users => _users;

  void save(User user) {
    final index = _users.indexWhere((u) => u.name == user.name);

    if (index != -1) {
      _users[index] = user;
    } else {
      User newUser = user.copyWith(id: const Uuid().v1());
      _users.add(newUser);
    }
  }

  void remove(User user) {
    _users.removeWhere((u) => u.name == user.name);
  }

  User searchByName(String name) {
    var user = _users.firstWhere((u) => u.name == name);
    return user;
  }

  @override
  String toString() {
    var result = "[";
    for (var user in _users) {
      result += user.toString();
    }
    result += "]";
    return result;
  }
}
