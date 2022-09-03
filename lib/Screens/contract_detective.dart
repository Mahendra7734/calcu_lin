import 'package:calcu_lien/Screens/contract_detective1.dart';
import 'package:calcu_lien/Screens/utils.dart';
import 'package:calcu_lien/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class Contract_Detective extends StatefulWidget {
  const Contract_Detective({Key? key}) : super(key: key);

  @override
  State<Contract_Detective> createState() => _Contract_DetectiveState();
}

class _Contract_DetectiveState extends State<Contract_Detective> {
  TextEditingController controller=TextEditingController();
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
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset('assets/Home Logo 3 of 5 - ContractDetective.png',color: Colors.white,),
                ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,left: 25,),
              child: Text("Take the advantage of our AI tool. ",style: TextStyle(fontSize: 19),textAlign: TextAlign.start,),
            ),

            SizedBox(
              width:Get.width*0.8,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 25,),
                child: Text("Upload PDF or Images to refine your contract with us.",style: TextStyle(fontSize: 16,color: Color.fromARGB(
                    255, 133, 133, 133)),textAlign: TextAlign.start,),
              ),
            ),

            SizedBox(
              width:Get.width*0.9,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 25,),
                child: Text("Max Size : 20 MB & 100 Pages",style: TextStyle(fontSize: 13,color: Color.fromARGB(
                    255, 68, 110, 97)),textAlign: TextAlign.start,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DefaultButton(text: "Contract.pdf", height: 48, width: 145, press: (){}, left: 10, right: 10, top: 20, fontsize: 16, color: blacklight,textcolor: black,fontWeight: FontWeight.w500,),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10),
                    child: Text("or",style: TextStyle(fontSize: 18,color: Color.fromARGB(
                        255, 0, 0, 0)),textAlign: TextAlign.center,),
                  ),
                  DefaultButton(text: "Take Photo", height: 48, width: 145, press: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => contract_detective1())
                      );

                  }, left: 10, right: 10, top: 20, fontsize: 16, color: blacklight,textcolor: black,fontWeight: FontWeight.w500,),

                ],
              ),
            ),
            SizedBox(
              width:Get.width*0.9,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 25,),
                child: Text("Only PDF, DOC and DOCX formats are acceptable",style: TextStyle(fontSize: 13,color: Color.fromARGB(
                    255, 68, 110, 97)),textAlign: TextAlign.start,),
              ),
            ),

            SizedBox(
              width:Get.width*0.8,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 25,),
                child: Text("Provide an email address where you like to receive email.",style: TextStyle(fontSize: 16,color: Color.fromARGB(
                    255, 133, 133, 133)),textAlign: TextAlign.start,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
              child: Container(
                 height: 45,

                child: TextFormField(
                  readOnly: true,
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // suffix: Text("available"),suffixStyle:
                      hintText: "   test@gmail.com",
                     // prefixIcon: Icon(Icons.person),

                  ),
                  autofocus: false,
                ),
              ),
            ),
            DefaultButton(text: 'Submit', width: 400, height: 50, press: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  context: context,
                  builder: (ctx) => _Report(ctx));
            }, top: 30, left: 20, right: 20, fontsize: 20, color: tiledarkcolor,textcolor: white,fontWeight: FontWeight.normal,),

            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 25,),
              child: Text("How Contract Detective Works",style: TextStyle(fontSize: 19),textAlign: TextAlign.start,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25.0,left: 25,),
              child: Text("1. Our tool examine the PDF received.",style: TextStyle(fontSize: 16,color: Color.fromARGB(
                  255, 133, 133, 133)),textAlign: TextAlign.start,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 25,),
              child: Text("2. Tool will check the issues.",style: TextStyle(fontSize: 16,color: Color.fromARGB(
                  255, 133, 133, 133)),textAlign: TextAlign.start,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 25,),
              child: Text("3. Tool will list issues in all areas.",style: TextStyle(fontSize: 16,color: Color.fromARGB(
                  255, 133, 133, 133)),textAlign: TextAlign.start,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 25,),
              child: Text("4. Tool will send an email to your ",style: TextStyle(fontSize: 16,color: Color.fromARGB(
                  255, 133, 133, 133)),textAlign: TextAlign.start,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 25,),
              child: Text("15. Registered email address.",style: TextStyle(fontSize: 16,color: Color.fromARGB(
                  255, 133, 133, 133)),textAlign: TextAlign.start,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
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
      ),
    );
  }
  _Report(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Container(
        height: 422,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24)),
            color: Colors.white


        ),


        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context, false),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.clear)),
                ),
              ),
              Divider(
                height: 1,

                color: Color.fromARGB(255, 112, 112, 112),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset('assets/OBJECTS.svg')
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Successfully Received your contract!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.hind(
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal),
                ),
              ),

              Container(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Soon you will receive an email from contract detective ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.hind(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Thanks for using Contract Detective!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.hind(
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal),
                ),
              ),

            ]
        ),


      );
    });
  }
}
