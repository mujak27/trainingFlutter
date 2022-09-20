class User {
  int id;
  String name;
  String password;

  User({
    required this.id,
    required this.name,
    required this.password,
  });

  static var users = [
    User(
      id : 1,
      name: 'admin',
      password: "admin"
    ),
    User(
      id : 2,
      name: 'user',
      password: "user"
    ),
    User(
      id : 3,
      name: 'muwujak',
      password: "MZ22-1"
    ),
  ];
}

User getUserById(int id){
  var user = User.users;
  for(var _user in user) {
    if(_user.id == id) return _user; 
  };
  return User(id: 0, name: "", password: "");
}