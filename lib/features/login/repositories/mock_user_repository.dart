import 'package:ts_4_8_1_eigene_app_ui/features/login/repositories/mock_user_database.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/repositories/user_repository.dart';
import 'package:ts_4_8_1_eigene_app_ui/features/login/schema/server_user_response.dart';

class MockUserRepository implements UserRepository {
  @override
  Future<ServerUserResponse> loginAndGetUser(
      String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (normalUser.email == email) {
      if (normalUser.password == password) {
        return ServerUserResponse(success: true, user: normalUser);
      }
    }

    if (adminUser.email == email) {
      if (adminUser.password == password) {
        return ServerUserResponse(success: true, user: adminUser);
      }
    }

    if (guest.email == email) {
      if (guest.password == password) {
        return ServerUserResponse(success: true, user: guest);
      }
    }

    return ServerUserResponse(success: false, errorMessage: "User not found");
  }
}
