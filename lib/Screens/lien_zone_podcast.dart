import 'package:calcu_lien/Screens/utils.dart';
import 'package:calcu_lien/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Lien_zone_podcast extends StatefulWidget {
  const  Lien_zone_podcast({Key? key}) : super(key: key);

  @override
  State< Lien_zone_podcast> createState() =>  Lien_zone_podcastState();
}

class  Lien_zone_podcastState extends State< Lien_zone_podcast> {

  String statevalue="State";
  var SelectState=['State','Rajasthan','Gujarat','U.P','Panjab'];

  String rolevalue="My role on this project is the …";
  var RoleState=['My role on this project is the …',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: Get.height*0.2,
              width: Get.width*1,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 68, 110, 97),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),


                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: SvgPicture.asset('assets/Home-Logo-2-of-5-Lien-O-Matic.svg'),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,left: 25,),
              child: Text("Almost done. ",style: TextStyle(fontSize: 19),textAlign: TextAlign.start,),
            ),

            SizedBox(
              width:Get.width*0.9,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 25,),
                child: Text("We need a little more information to generate your results.",style: TextStyle(fontSize: 16,color: Color.fromARGB(
                    255, 0, 0, 0)),textAlign: TextAlign.start,),
              ),
            ),


           Padding(
             padding: const EdgeInsets.only(left: 20.0,top: 20),
             child: styleText("First Name*",black,FontWeight.normal,15),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
              child: Container(
                //height: 45,

                child: TextFormField(

                 // controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "  First Name ",
                    // prefixIcon: Icon(Icons.person),

                  ),
                  autofocus: false,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20),
              child: styleText("Last Name*",black,FontWeight.normal,15),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
              child: Container(
                //height: 45,

                child: TextFormField(

                  // controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "  Last Name ",
                    // prefixIcon: Icon(Icons.person),

                  ),
                  autofocus: false,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20),
              child: styleText("Company*",black,FontWeight.normal,15),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
              child: Container(
                //height: 45,

                child: TextFormField(

                  // controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "  Company",
                    // prefixIcon: Icon(Icons.person),

                  ),
                  autofocus: false,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20),
              child: styleText("City*",black,FontWeight.normal,15),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
              child: Container(
                //height: 45,

                child: TextFormField(

                  // controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "  City",
                    // prefixIcon: Icon(Icons.person),

                  ),
                  autofocus: false,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20),
              child: styleText("State*",black,FontWeight.normal,15),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
              child:Container(
                width: double.infinity,

                //height:58,width: 320,

                // margin: EdgeInsets.only(left: 20,top: 10,right: 20 ),
                decoration: BoxDecoration(color: Colors.white,
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black38,width: 1,style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5)
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: DropdownButton<String>(
                    isExpanded: true,

                    value: statevalue,
                    onChanged: (String? newValue) =>
                        setState(() => statevalue = newValue!),
                    items: SelectState
                        .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                        .toList(),

                    // add extra sugar..
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 42,
                    underline: SizedBox(),

                  ),
                ),


              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20),
              child: styleText("Role*",black,FontWeight.normal,15),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
              child:Container(
                width: double.infinity,

                //height:58,width: 320,

                // margin: EdgeInsets.only(left: 20,top: 10,right: 20 ),
                decoration: BoxDecoration(color: Colors.white,
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black38,width: 1,style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5)
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: DropdownButton<String>(
                    isExpanded: true,

                    value: rolevalue,
                    onChanged: (String? newValue) =>
                        setState(() => rolevalue = newValue!),
                    items: RoleState
                        .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                        .toList(),

                    // add extra sugar..
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 42,
                    underline: SizedBox(),

                  ),
                ),


              ),
            ),
            DefaultButton(text: 'Analyze', width: double.infinity, height: 50, press: () {  }, top: 30, left: 20, right: 20, fontsize: 20, color: tiledarkcolor,textcolor: white,fontWeight: FontWeight.normal,),

          ],
        ),
      ),
    );
  }
}
