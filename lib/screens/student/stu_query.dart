import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/query_controller.dart';
import 'package:shaily/widget/button.dart';

class StuQuery extends StatefulWidget {
  StuQuery({Key? key}) : super(key: key);

  @override
  State<StuQuery> createState() => _StuQueryState();
}

class _StuQueryState extends State<StuQuery> {
  QueryController queryController = Get.put(QueryController());
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
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "Query",
            style: GoogleFonts.roboto(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Center(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width - 100,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: TextField(
                    maxLines: 5,
                    controller: queryController.messageController,
                    decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.2,
                          maxWidth: MediaQuery.of(context).size.width - 120,
                        ),
                        border: InputBorder.none),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            InkWell(
              onTap: () async {
                await queryController.addquery();
                if (queryController.isLoading == false) {
                  Get.defaultDialog(
                      title: "Success",
                      content: Text("Your Query is Submitted."));
                } else {
                  Get.defaultDialog(
                      title: "Error", content: Text("Something went wrong."));
                }
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
