class UserModelSQL {
  final int? id;
  final String nama;
  final String email;
  final String password;

  UserModelSQL({
    this.id,
    required this.nama,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'nama': nama, 'email': email, 'password': password};
  }

  factory UserModelSQL.fromMap(Map<String, dynamic> map) {
    return UserModelSQL(
      id: map['id'],
      nama: map['nama'],
      email: map['email'],
      password: map['password'],
    );
  }
}
