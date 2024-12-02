import 'package:ts_4_8_1_eigene_app_ui/features/login/schema/server_user_response.dart';

abstract class UserRepository {
  Future<ServerUserResponse> loginAndGetUser(String email, String password);
}
