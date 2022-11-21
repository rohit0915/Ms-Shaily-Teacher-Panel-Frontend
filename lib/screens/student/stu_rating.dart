import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/widget/button.dart';

class StuRating extends StatefulWidget {
  StuRating({Key? key}) : super(key: key);

  @override
  State<StuRating> createState() => _StuRatingState();
}

class _StuRatingState extends State<StuRating> {
  bool isTapped = false;
  var rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.bgColor,
        appBar: AppBar(
          backgroundColor: Style.bgColor,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: isTapped
                  ? Container()
                  : Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
          title: Text(
            "Rate your Experience",
            style: GoogleFonts.roboto(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        body: isTapped
            ? Container(
                child: Center(
                  child: Text(
                    "Thank You for your review it will help us improve",
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            : Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width - 100,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                            constraints: BoxConstraints(
                              maxHeight:
                                  MediaQuery.of(context).size.height * 0.2,
                              maxWidth: MediaQuery.of(context).size.width - 120,
                            ),
                            border: InputBorder.none),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            5,
                            (index) => IconButton(
                                onPressed: () {
                                  setState(() {
                                    rating = index + 1;
                                  });
                                },
                                icon: index < rating
                                    ? Icon(
                                        Icons.star,
                                        color: Color(0xFFFABD3B),
                                        size: 35,
                                      )
                                    : Icon(
                                        Icons.star_border,
                                        size: 35,
                                        color: Colors.black,
                                      )))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isTapped = true;
                      });
                    },
                    child: Button(
                      text: "Submit",
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  )
                ],
              ));
  }
}
