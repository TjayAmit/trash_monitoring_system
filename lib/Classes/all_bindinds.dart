import 'package:basureward/packages.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
  }
}
