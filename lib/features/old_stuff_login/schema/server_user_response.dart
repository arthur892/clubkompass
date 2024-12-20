import 'package:clubkompass/shared/models/repository/models/app_user.dart';

class ServerUserResponse {
  final AppUser? user;
  final bool success;
  final String? errorMessage;

  ServerUserResponse({this.user, required this.success, this.errorMessage});
}
