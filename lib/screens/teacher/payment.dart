import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/widget/button.dart';


class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "PAYMENT OPTIONS",
          style: GoogleFonts.roboto(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0xFFBFBFBF)))),
              child: Text(
                "UPI",
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xFFBFBFBF)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/googlepay.png",
                      scale: 4,
                    ),
                    Text(
                      "Google Pay",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Radio(value: null, groupValue: null, onChanged: null),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xFFBFBFBF)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/phone.png",
                      scale: 4,
                    ),
                    Text(
                      "PhonePe",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Radio(value: null, groupValue: null, onChanged: null),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xFFBFBFBF)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/amz.png",
                      scale: 4,
                    ),
                    Text(
                      "Amazon Pay UPI",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Radio(value: null, groupValue: null, onChanged: null),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/pay.png",
                  scale: 3,
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter any UPI ID ",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          constraints: BoxConstraints(
                            maxHeight:
                                MediaQuery.of(context).size.height * 0.07,
                            maxWidth: MediaQuery.of(context).size.width - 150,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Button(
                text: "Proceed To Pay",
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height * 0.05),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
