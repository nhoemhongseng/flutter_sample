import 'package:sameple_flutter/client/getx_client.dart';
import 'package:sameple_flutter/constant/app_constant.dart';
import 'package:sameple_flutter/response/login_response.dart';

class UserRepository {
  Future<LoginResponse> login(
    String email,
    String password,
  ) async {
    final res = await GetXClient.instance.post(path: ServerRout.login, data: {
      "username": email,
      "password": password,
    });
    return LoginResponse.fromJson(res);
  }
}
