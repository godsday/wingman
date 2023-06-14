import 'package:get/get.dart';
import 'package:winginc/Screen/login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit()async {
    await splashLoader();


    super.onInit();
  }

  Future <dynamic>splashLoader() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.offAll  (
          transition: Transition.fadeIn,
          duration: const Duration(seconds: 6),
          LoginScreen()
        );
        update();
  }
}
