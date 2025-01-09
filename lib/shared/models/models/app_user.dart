class AppUser {
  final String email;
  final String userId;

  final String firstName;
  final bool isAdmin;
  final bool isGuest;
  final String? userAvatar;
  AppUser(
      {required this.email,
      this.firstName = "",
      this.isAdmin = false,
      this.isGuest = true,
      this.userAvatar = "",
      required this.userId});
}
