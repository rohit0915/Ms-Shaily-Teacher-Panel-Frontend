import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/screens/welcome.dart';

class Splash_View extends StatefulWidget {
  const Splash_View({super.key});

  @override
  State<Splash_View> createState() => _Splash_ViewState();
}

class _Splash_ViewState extends State<Splash_View> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Get.to(() => Welcome());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.bgColor,
        body: Center(
          child: Text(
            "Logo",
            style: GoogleFonts.roboto(
                fontSize: 58, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ));
  }
}
