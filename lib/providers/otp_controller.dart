import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:winginc/services/api_service.dart';

class OtpController extends GetxController{

    OtpFieldController otpController = OtpFieldController();

   Future verifyOtpTo()async{

     Future otpverification( )async{

      ApiServices().otpVerify();
      update();
    }

   }

}