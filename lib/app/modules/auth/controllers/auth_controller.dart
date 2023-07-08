import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isVisiblilty = false.obs;
  RxBool isCheckBox = false.obs;

  void visiblilty() {
    isVisiblilty.value = !isVisiblilty.value;
  }

  void checkBox() {
    isCheckBox.value = !isCheckBox.value;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
