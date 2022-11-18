import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:shaily/screens/welcome.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
