class User {
  final String email;
  final String password;
  final String name;
  final bool isAdmin;
  final bool isGuest;
  final String? userAvatar;
  User(
      {required this.email,
      required this.password,
      required this.name,
      this.isAdmin = false,
      this.isGuest = false,
      this.userAvatar});
}
