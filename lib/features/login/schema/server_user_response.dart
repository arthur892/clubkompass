import 'package:clubkompass/shared/models/user.dart';

class ServerUserResponse {
  final User? user;
  final bool success;
  final String? errorMessage;

  ServerUserResponse({this.user, required this.success, this.errorMessage});
}
