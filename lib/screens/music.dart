import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/style.dart';
import '../widget/bluebox.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        // centerTitle: true,
        elevation: 0,
        title: Text(
          "Music & Dancing",
          style: GoogleFonts.roboto(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            InkWell(
              child: BlueBox2(
                text: "Flute",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Voilin",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Guitar",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Keyboard Instruments",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Clarinet",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "String Instruments",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Bass Guitar",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Percussion",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Piano",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Trumpet",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Banjo",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Drums",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Ubulele",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Brass",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Drusmet",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Xylophone",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "WoodWind",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "French horn",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Tabla",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Ballet Dance",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Ballroom",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Contemporary",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Contemporary",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "HipHop",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Jazz",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Folk Dance",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Irish Dance",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Mordern Dance",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Swing Dance",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Bharatnatyam",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Kathakalli",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Kathaak",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "kutchipudi",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Odissi",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            InkWell(
              child: BlueBox2(
                text: "Sattriya",
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          ],
        ),
      ),
    );
  }
}
