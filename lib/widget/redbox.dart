import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RedBox extends StatelessWidget {
  final String text;

  RedBox({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          height: MediaQuery.of(context).size.height * 0.065,
          child: SvgPicture.asset(
            "assets/redcontainer.svg",
            fit: BoxFit.fill,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: GoogleFonts.roboto(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        )
      ],
    );
  }
}

class RedBox2 extends StatelessWidget {
  final String text;

  RedBox2({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            height: MediaQuery.of(context).size.height * 0.04,
            child: SvgPicture.asset(
              "assets/redcontainer.svg",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 15,
            child: Container(
              width: MediaQuery.of(context).size.width - 100,
              child: ListTile(
                minLeadingWidth: 10,
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  text,
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
