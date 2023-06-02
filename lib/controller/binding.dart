import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';
import 'firestore_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<FireStoreController>(FireStoreController(), permanent: true);
  }
}
