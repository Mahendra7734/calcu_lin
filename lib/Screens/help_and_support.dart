import 'package:calcu_lien/Screens/utils.dart';
import 'package:calcu_lien/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
class Help_And_Support extends StatefulWidget {
  const Help_And_Support({Key? key}) : super(key: key);

  @override
  State<Help_And_Support> createState() => _Help_And_SupportState();
}

class _Help_And_SupportState extends State<Help_And_Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 93,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Help and Support",style: TextStyle(fontSize: 22)),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          //systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Color.fromARGB(255, 68, 110, 97),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 15,
              ),
              child: Text("Welcome, kindly share your thoughts here.",style: GoogleFonts.hind(
                  fontSize: 19,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
              child: Container(
                //height: 50,

                child: TextFormField(

                  //controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "Subject",
                    // prefixIcon: Icon(Icons.person),

                  ),
                  autofocus: false,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
              child: Container(
               // height: 50,

                child: TextFormField(

                  //controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "Email Address",
                    // prefixIcon: Icon(Icons.person),

                  ),
                  autofocus: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
              child: Container(
                // height: 50,

                child: TextFormField(
                 maxLines: null,
                  minLines: 6,
                  //controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "Message Details",
                    // prefixIcon: Icon(Icons.person),

                  ),
                  autofocus: false,
                ),
              ),
            ),

            DefaultButton(text: 'Submit', width: 400, height: 50, press: () {

            }, top: 50, left: 20, right: 20, fontsize: 20, color: tiledarkcolor,textcolor: white,fontWeight: FontWeight.normal,),          ],
        ),
      ),
    );
  }
}
