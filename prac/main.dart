void main() {
  User user1 = User("No Friend", 21);
  print(user1.userName);
  print(user1.age);
  user1.login();
}

class User {
  String userName = 'Billy';
  int age = 21;

  //use of a constructor in dart
  User(String userName, int age) {
    this.userName = userName;
    this.age = age;
  }

  void login() {
    print("Logged in!");
  }
}
