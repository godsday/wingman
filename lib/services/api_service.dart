import 'package:dio/dio.dart';

class ApiServices {
  final dio = Dio();
  Future sendOtp(mobileNumber) async {
    final respone =
        await dio.post("https://test-otp-api.7474224.xyz/sendotp.php",
            data: {"mobile": mobileNumber},
            options: Options(headers: {
              "Content-Type": "text/html; charset=UTF-8",
            }));

    try {
      if (respone.statusCode == 200) {
        print(respone);
      }
    } catch (e) {}
  }

  Future otpVerify() async {
    final respone = await dio.post(
      "http://localhost/sample-api-login/verifyotp.php",
      data: {"request_id": "0000000000", "code": "123456"},
    );
    print(respone.statusCode);

    try {
      if (respone.statusCode == 200) {
        print(respone);
      }
    } catch (e) {}
  }
}
