import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winginc/providers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
        final height= MediaQuery.of(context).size.height;


    return  Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("data")],
        ),
      ),
    );
  }
}
