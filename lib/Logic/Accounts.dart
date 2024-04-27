import 'dart:convert';

// void main() {
//
//   UserManager um = UserManager();
//
//   User user1 = User(
//       id: "116232123",
//       email: "example@stonybrook.edu",
//       password: "examplePassword123"
//   );
//
//   User user2 = User(
//       id: "12312312",
//       email: "gangster@stonybrook.edu",
//       password: "gangpass231"
//   );
//
//   um.register(user1);
//   um.register(user2);
//
//   User? fetched1 = um.getUserById(12312312)!;
//   User? fetched2 = um.getUserByEmail("example@stonybrook.edu")!;
//
//   print(fetched1.getId());
//   print(fetched2.getId());
// }

class AccountsManager
{
  List users = [];

  void register(Accounts user)
  {
    users.add(user);
  }

  Accounts? getUserById(int id)
  {
    for (Accounts user in users){
      if(int.parse(user.getId()) == id) {
        return user;
      }
    }
    return null;
  }

  Accounts? getUserByEmail(String email)
  {
    for (Accounts user in users){
      if(user.getEmail() == email) {
        return user;
      }
    }
    return null;
  }
}

class Accounts
{
  String id;
  String email;
  String password;

  Accounts({
    required this.id,
    required this.email,
    required this.password,
  });

  String getId() {
    return id;
  }

  String getEmail() {
    return email;
  }

  String getPassword() {
    return password;
  }
}
