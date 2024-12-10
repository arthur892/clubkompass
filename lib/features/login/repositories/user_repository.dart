import 'package:clubkompass/features/login/schema/server_user_response.dart';

abstract class UserRepository {
  Future<ServerUserResponse> loginAndGetUser(String email, String password);
}
