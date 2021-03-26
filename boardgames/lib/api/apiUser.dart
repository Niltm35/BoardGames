class ApiUser {
  String name;
  String email;
  String password;

  static ApiUser fromJson(Map<String, dynamic> json) {
    ApiUser user = ApiUser();
    user.name = json["name"];
    user.email = json["email"];
    user.password = json["password"];

    return user;
  }
}
