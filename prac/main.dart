void main() {
  User user1 = User("No Friend", 21);
  print(user1.userName);
  print(user1.age);
  User user2 = User("Billy", 21);
  print(user2.userName);
  print(user2.age);
}

class User {
  String userName;
  int age;

  //use of a constructor in dart
  User(String userName, int age, String phoneNumber, String email,
      String password, String address, int age)
      : userName = userName,
        age = age {
    this.userName = userName;
    this.age = age;
  }
}

class Owners extends User {
  String name;
  String address;
  String phoneNumber;
  String email;
  String password;
  String userName;
  int age;

  Owners(String name, String address, String phoneNumber, String email,
      String password, String userName, String age)
      : super(name, address, phoneNumber, email, password, userName, age);
}
