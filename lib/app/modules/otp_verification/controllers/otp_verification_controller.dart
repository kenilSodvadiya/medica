import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medica/app/modules/forgot_password/controllers/forgot_password_controller.dart';
import 'package:medica/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationController extends GetxController {
  final signUpData = Get.find<SignUpController>();
  final forgotData = Get.find<ForgotPasswordController>();
  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  @override
  void onClose() {
    startTimer();
    super.onClose();
  }

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  ).copyDecorationWith(
    border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
    borderRadius: BorderRadius.circular(8),
  );

  final _seconds = 60.obs;
  int get seconds => _seconds.value;
  set seconds(int value) => _seconds.value = value;

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        seconds--;
      }
    });
  }
}
