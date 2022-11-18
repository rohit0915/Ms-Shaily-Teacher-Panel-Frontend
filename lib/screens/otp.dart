import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/screens/choose_panel.dart';
import 'package:shaily/widget/button.dart';
import 'package:shaily/widget/logo.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Logo(),
          Column(
            children: [
              Pinput(
                length: 4,
                defaultPinTheme: PinTheme(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          width: 2,
                          color: Colors.black,
                        ))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text.rich(TextSpan(
                  text: "Didn’t recieve OTP ! ",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                  children: [
                    TextSpan(
                        text: "Resend",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFCF3E3E)))
                  ])),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Center(
                  child: InkWell(
                      onTap: () {
                        Get.to(() => ChoosePanel());
                      },
                      child: Button(
                        text: "Continue",
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width / 2,
                      )))
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width - 20,
            child: Column(
              children: [
                Text(
                  "Terms and conditions",
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper risus quis feugiat urna sit elementum sed.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
