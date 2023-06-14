
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:winginc/widgets/button_custom.dart';
import 'package:winginc/widgets/text_custom.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../providers/otp_controller.dart';

class OtpScreenView extends StatelessWidget {
  OtpScreenView({Key? key}) : super(key: key);
  final otpController = Get.put(OtpController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
               
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextCustomStyle(
                      textData: "Verification Code",
                      textSize: 35.0,
                      textWeight: FontWeight.bold,
                     
                      textColor: Colors.black,
                    ),
                    TextCustomStyle(
                      textData: "Please type the verification code\n Here",
                      textSize: 16.0.sp,
                      textWeight: FontWeight.normal,
                      textAlign: TextAlign.center,
                      textColor: Colors.blueGrey,
                    ),
                    SizedBox(height:5.h,),
                    OTPTextField(
                      controller:otpController.otpController,
                      length: 6,
                      width: 90.w,
                      fieldWidth: 40,
                      style: const TextStyle(fontSize: 45),
                      textFieldAlignment: MainAxisAlignment.spaceEvenly,
                      fieldStyle: FieldStyle.box,
                      onChanged: (pin) {},
                      onCompleted: (pin) {
                        // otpScreenController.verifyOtpTo(pin);
                      },
                    ),
                    
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0.sp,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                ElevatedButtonCustom(
                  
                  onPressed: (){
                    otpController.verifyOtpTo();

                }, child: TextCustomStyle(textData: "verify", textSize: 15.sp, textWeight: FontWeight.w400)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextCustomStyle(
                        textData: "Didn't Receive it?",
                        textSize: 13.0.sp,
                        textWeight: FontWeight.w400),
                    TextButton(
                        onPressed: () {
                          // otpScreenController.resendOtpTo();
                          // otpController.clear();
                        },
                        child: TextCustomStyle(
                            // fontFamily: "Acme",
                            textData: "Resend code",
                            textSize: 13.0.sp,
                            textWeight: FontWeight.w400)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextCustomStyle(
                        textData: "Didn't enter right number?",
                        textSize: 13.0.sp,
                        textWeight: FontWeight.w400),
                    TextButton(
                        onPressed: () {
                          // signupController.loading.value = false;
                          Get.back();
                        },
                        child: TextCustomStyle(
                            // fontFamily: "Acme",
                            textData: "Change number",
                            textSize: 13.0.sp,
                            textWeight: FontWeight.w400)),
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
