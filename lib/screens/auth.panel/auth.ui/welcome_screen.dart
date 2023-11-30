// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_field
import 'package:e_comers_app/controllers/google_sign_in_controller.dart';
import 'package:e_comers_app/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final GoogleSignInController _googlesignincontroller =
      Get.put(GoogleSignInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: appconstan.appscendrycolor,
        title: Text(
          "MY APP",
          style: TextStyle(color: appconstan.appTextcolor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(color: appconstan.appMaincolor),
              child: Lottie.asset('assets/images/splash-icon.json'),
            ),
            Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  "SHOPPING",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
                child: Container(
              width: Get.width / 1.2,
              height: Get.height / 12,
              decoration: BoxDecoration(
                color: appconstan.appMaincolor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextButton.icon(
                icon: Image.asset(
                  'assets/images/google-logoo.png',
                  width: Get.width / 12,
                  height: Get.height / 12,
                ),
                label: Text(
                  "Sign In With Google",
                  style: TextStyle(color: appconstan.appTextcolor),
                ),
                onPressed: () {
                  _googlesignincontroller.signInWithGoogle();
                },
              ),
            )),
            SizedBox(
              height: Get.height / 50,
            ),
            Material(
                child: Container(
              width: Get.width / 1.2,
              height: Get.height / 12,
              decoration: BoxDecoration(
                color: appconstan.appMaincolor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextButton.icon(
                icon: Image.asset(
                  'assets/images/email-logo.png',
                  width: Get.width / 12,
                  height: Get.height / 12,
                ),
                label: Text(
                  "Sign In With Email",
                  style: TextStyle(color: appconstan.appTextcolor),
                ),
                onPressed: () {},
              ),
            ))
          ],
        ),
      ),
    );
  }
}
