// ignore_for_file: prefer_const_constructors

import 'package:e_comers_app/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: appconstan.appscendrycolor,
            statusBarIconBrightness: Brightness.light),
        backgroundColor: appconstan.appMaincolor,
        title: Text(appconstan.appMainName),
        centerTitle: true,
      ),
    );
  }
}
