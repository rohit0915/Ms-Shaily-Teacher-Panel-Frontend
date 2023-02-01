import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/razorpay_controller.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/controller/subscription_controller.dart';

import 'payment.dart';

class Subscription extends StatelessWidget {
  Subscription({super.key});
  SubscriptionController subscriptionController = Get.find();
  RazorpayController _razorpayController = Get.put(RazorpayController());
  RegisterController registerController = Get.find();

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
          "Subscription Plans",
          style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Obx(() {
            return subscriptionController.isLoading == true
                ? CircularProgressIndicator()
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount:
                        subscriptionController.data!.subscriptions.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 15, top: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "MEMBERSHIP FOR ${subscriptionController.data!.subscriptions[index].plan} PLAN",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                Text(
                                    "₹ ${subscriptionController.data!.subscriptions[index].price}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.015),
                                InkWell(
                                  onTap: () {
                                    print(subscriptionController
                                        .data!.subscriptions[index].price);
                                    _razorpayController.doPayment(
                                        subscriptionController.data!
                                                .subscriptions[index].price *
                                            100,
                                        registerController
                                            .teacher!.data.firstName,
                                        registerController
                                            .teacher!.data.phoneNumber
                                            .toString(),
                                        subscriptionController
                                            .data!.subscriptions[index].id);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 25),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue.shade800),
                                    child: Text(
                                      "Try Now",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                        ],
                      );
                    });
          }),
        ),
      ),
    );
  }
}
