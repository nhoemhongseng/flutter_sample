import 'package:get/get.dart';
import 'package:sameple_flutter/repository/user_repository.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserRepository());
  }
}
