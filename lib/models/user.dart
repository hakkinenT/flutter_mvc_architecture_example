class User {
  final String? id;
  final String name;
  final DateTime birthDate;
  final String phone;
  final String email;

  const User(
      {this.id,
      required this.name,
      required this.birthDate,
      required this.phone,
      required this.email});

  User copyWith({
    String? id,
    String? name,
    DateTime? birthDate,
    String? phone,
    String? email,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
      phone: phone ?? this.phone,
      email: email ?? this.email,
    );
  }

  @override
  String toString() {
    return 'Nome: $name, Email: $email';
  }
}
