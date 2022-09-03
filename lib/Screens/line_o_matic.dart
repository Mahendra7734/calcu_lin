import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
class Line_O_Matic extends StatefulWidget {
  const Line_O_Matic({Key? key}) : super(key: key);

  @override
  State<Line_O_Matic> createState() => _Line_O_MaticState();
}

class _Line_O_MaticState extends State<Line_O_Matic> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 184,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          //systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Color.fromARGB(255, 68, 110, 97),
        ),
        title: SvgPicture.asset('assets/Home-Logo-2-of-5-Lien-O-Matic.svg'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Container(
              alignment: Alignment.center,

              child: Text("Select your type of project",textAlign: TextAlign.center,  style: GoogleFonts.hind(
                  fontSize: 18,
                  color: Color.fromARGB(255, 68, 110, 97),
                  fontWeight: FontWeight.normal),)),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
            child: SizedBox(
              height: Get.height*0.08,
              width: Get.width*1,
              child: Card(
                elevation: 4,
                child: Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.center,
                    child: Text("Florida Private Bonded & Nonbonded Projects",textAlign: TextAlign.start,)),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
            child: SizedBox(
              height: Get.height*0.08,
              width: Get.width*1,
              child: Card(
                elevation: 4,
                child: Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.center,
                    child: Text("Florida Private Bonded & Nonbonded Projects",textAlign: TextAlign.start,)),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
            child: SizedBox(
              height: Get.height*0.08,
              width: Get.width*1,
              child: Card(
                elevation: 4,
                child: Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.center,
                    child: Text("Florida Private Bonded & Nonbonded Projects",textAlign: TextAlign.start,)),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
            child: SizedBox(
              height: Get.height*0.08,
              width: Get.width*1,
              child: Card(
                elevation: 4,
                child: Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.center,
                    child: Text("Florida Private Bonded & Nonbonded Projects",textAlign: TextAlign.start,)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: SizedBox(
              height: Get.height*0.07,
              width: Get.width*1,
              child: Card(
                elevation: 4,
                child: Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.center,
                    child: Text("How to file your income tax on time and availe",textAlign: TextAlign.start,)),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
