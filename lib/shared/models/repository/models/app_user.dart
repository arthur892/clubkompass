class AppUser {
  final String email;
  final String password;
  final String firstName;
  final bool isAdmin;
  final bool isGuest;
  final String? userAvatar;
  AppUser(
      {required this.email,
      required this.password,
      required this.firstName,
      this.isAdmin = false,
      this.isGuest = true,
      this.userAvatar = ""});
}
