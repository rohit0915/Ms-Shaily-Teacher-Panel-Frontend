import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/style.dart';

class Button extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  const Button({super.key, required this.text, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Style.blue, borderRadius: BorderRadius.circular(10)),
      child: Text(
        text,
        style: GoogleFonts.roboto(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width - 75,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.17)),
          color: Style.green,
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        "Proceed",
        style: GoogleFonts.roboto(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
}
