// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Keyboard {
  static hidekeyboard(BuildContext context) {
    FocusScopeNode currentFocuse = FocusScope.of(context);
    if (!currentFocuse.hasPrimaryFocus) {
      currentFocuse.unfocus();
    }
  }
}
