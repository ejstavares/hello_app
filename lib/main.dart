import 'package:flutter/material.dart';
import 'package:hello_app/core/colors.dart';
import 'package:hello_app/core/settings.dart';
import 'package:hello_app/ui/pages/home/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(primarySwatch: appPrimaryMaterialColor),
      home: HomePage(),
    );
  }
}
