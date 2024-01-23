void main() {
  User user1 = User();
  print(user1.userName);
  print(user1.age);
  user1.login();
}

class User {
  String userName = 'Billy';
  int age = 21;

  void login() {
    print("Logged in!");
  }
}
