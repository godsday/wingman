import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:winginc/Screen/otp_screen.dart';
// import 'package:sizer/sizer.dart';
import 'package:winginc/providers/login_controller.dart';
import 'package:winginc/widgets/button_custom.dart';
import 'package:winginc/widgets/text_custom.dart';
import 'package:winginc/widgets/textfield_custom.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 22.h,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100.w,
                  height: 72.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(136, 0, 0, 0),
                            Colors.transparent
                          ],
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Form(
                        key: loginController.numformkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextField(
                              icon: Icons.phone,
                              type: TextInputType.number,
                              validator: (value) {
                                return null;
                              },
                              controller: loginController.numberEditController,
                              labeltext: "Mobile Number",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ElevatedButtonCustom(
                                width: 90.w,
                                height: 7.h,
                                onPressed: () {
                                  loginController.getMobileOtp(loginController.numberEditController,);
                                  Get.to(() => OtpScreenView());
                                },
                                child: const TextCustomStyle(
                                    textData: "Continue",
                                    textSize: 18,
                                    textWeight: FontWeight.bold))
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
