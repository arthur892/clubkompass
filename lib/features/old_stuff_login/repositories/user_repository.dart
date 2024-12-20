import 'package:clubkompass/features/old_stuff_login/schema/server_user_response.dart';

abstract class UserRepository {
  Future<ServerUserResponse> loginAndGetUser(String email, String password);
}
