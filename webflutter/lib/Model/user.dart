class User {
  String? lastname;
  String? email;
  String? password;

  User({this.lastname, this.email, this.password});

  User.fromJson(Map<String, dynamic> json) {
    lastname = json['lastname'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lastname'] = lastname;
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
