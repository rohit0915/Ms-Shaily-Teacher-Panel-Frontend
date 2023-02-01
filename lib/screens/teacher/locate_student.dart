import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shaily/common/style.dart';
import 'package:shaily/controller/register_controller.dart';
import 'package:shaily/widget/button.dart';

class LocateStudent extends StatefulWidget {
  const LocateStudent({super.key});

  @override
  State<LocateStudent> createState() => _LocateStudentState();
}

class _LocateStudentState extends State<LocateStudent> {
  RegisterController registerController = Get.find();
  late final GoogleMapController googleMapController;
  var isTapped = false;
  static CameraPosition? defaultPosition;
  final Set<Marker> markers = {};

  @override
  void initState() {
    // TODO: implement initState
    defaultPosition = CameraPosition(
        target: LatLng(double.parse(registerController.lat.value),
            double.parse(registerController.long.value)),
        zoom: 15);
    super.initState();
  }

  addMarker() {
    setState(() {
      markers.add(Marker(
          markerId: MarkerId('default Location'),
          position: defaultPosition!.target,
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      appBar: AppBar(
        backgroundColor: Style.bgColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(
          "Locate students near you",
          style: GoogleFonts.poppins(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
            onMapCreated: (controller) => googleMapController = controller,
            initialCameraPosition: defaultPosition!),
      )
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Image.asset( 
          //       "assets/map.png",
          //     ),
          //     SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //     Padding(
          //       padding: const EdgeInsets.only(left: 15, bottom: 10),
          //       child: InkWell(
          //         onTap: () {
          //           setState(() {
          //             isTapped = true;
          //           });
          //         },
          //         child: Container(
          //           alignment: Alignment.center,
          //           height: MediaQuery.of(context).size.height * 0.05,
          //           width: MediaQuery.of(context).size.width - 150,
          //           decoration: BoxDecoration(
          //               border: Border.all(color: Colors.black),
          //               color: isTapped ? Style.green : Colors.white,
          //               borderRadius: BorderRadius.circular(20.0)),
          //           child: Text(
          //             "Select your prefered distance",
          //             style: GoogleFonts.poppins(
          //                 fontSize: 15,
          //                 fontWeight: FontWeight.w400,
          //                 color: isTapped ? Colors.white : Style.blue),
          //           ),
          //         ),
          //       ),
          //     ),
          //     isTapped
          //         ? Center(
          //             child: Column(
          //               children: [
          //                 Text(
          //                   "2 kms away",
          //                   style: GoogleFonts.poppins(
          //                       fontSize: 15,
          //                       fontWeight: FontWeight.w400,
          //                       color: Colors.black),
          //                 ),
          //                 Text(
          //                   "5 kms away",
          //                   style: GoogleFonts.poppins(
          //                       fontSize: 15,
          //                       fontWeight: FontWeight.w400,
          //                       color: Colors.black),
          //                 ),
          //                 Text(
          //                   "10 kms away",
          //                   style: GoogleFonts.poppins(
          //                       fontSize: 15,
          //                       fontWeight: FontWeight.w400,
          //                       color: Colors.black),
          //                 ),
          //                 Text(
          //                   "20 kms away",
          //                   style: GoogleFonts.poppins(
          //                       fontSize: 15,
          //                       fontWeight: FontWeight.w400,
          //                       color: Colors.black),
          //                 )
          //               ],
          //             ),
          //           )
          //         : Container(),
          //     SizedBox(
          //       height: MediaQuery.of(context).size.height * 0.02,
          //     ),
          //     Center(child: Button2()),
          //     SizedBox(
          //       height: MediaQuery.of(context).size.height * 0.04,
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
