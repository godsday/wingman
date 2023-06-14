import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winginc/services/api_service.dart';

class LoginController extends GetxController{

final numberEditController = TextEditingController();
final numformkey = GlobalKey<FormState>();


   Future getMobileOtp(TextEditingController numberEditController)async{

      ApiServices().sendOtp(numberEditController);
      update();
    }
}