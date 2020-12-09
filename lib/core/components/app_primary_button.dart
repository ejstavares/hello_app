import 'package:flutter/material.dart';
import 'package:hello_app/core/colors.dart';

class AppPrimaryButton extends RaisedButton {
  const AppPrimaryButton(
      {VoidCallback onPressed,
      Widget child,
      EdgeInsetsGeometry padding,
      Key key})
      : super(
          child: child ?? const Text('BUTTON'),
          padding: padding ?? const EdgeInsets.symmetric(vertical: 24.0),
          onPressed: onPressed,
          key: key,
          color: appPrimaryDarkColor,
          textColor: Colors.white,
          elevation: 0.0,
        );
}
