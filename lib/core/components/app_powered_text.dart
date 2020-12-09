import 'package:flutter/material.dart';
import 'package:hello_app/core/colors.dart';
import 'package:hello_app/core/settings.dart';

class AppPoweredText extends Text {
  const AppPoweredText()
      : super(appPoweredText,
            style: const TextStyle(color: appPrimaryColor, height: 3));
}
