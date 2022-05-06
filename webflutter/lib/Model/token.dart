class Token {
  String? jwt;

  Token({this.jwt});

  Token.fromJson(Map<String, dynamic> json) {
    jwt = json['jwt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['jwt'] = jwt;
    return data;
  }
}
