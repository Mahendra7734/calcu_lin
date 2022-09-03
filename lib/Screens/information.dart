import 'package:calcu_lien/Screens/menu.dart';
import 'package:calcu_lien/Screens/utils.dart';
import 'package:calcu_lien/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97) ,
        centerTitle:true,
        title: Text("Information",style: TextStyle(fontSize: 22)),
        systemOverlayStyle: SystemUiOverlayStyle(
            //systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Color.fromARGB(255, 68, 110, 97),
        ),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,top: 30),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                       Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                        child: Text("Terms of use and disclimer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.start,),
                      ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          height: Get.height*0.5,
                          child: SingleChildScrollView(child: Text("Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.",style: TextStyle(color: Colors.black54),))),
                    )
                  ],
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                Checkbox(
                    value: valuefirst,
                    // checkColor: Colors.blue,
                    activeColor: Colors.blue,
                    onChanged: (val) {
                      setState(() {
                        valuefirst = val!;
                      });
                    }),
                RichText(
                  text: new TextSpan(
                    text: 'I accept to ',
                    //style: DefaultTextStyle.of(context).style,
                    style: TextStyle(fontSize: 15,color: Colors.black87),
                    children: <TextSpan>[
                      new TextSpan(
                          text: 'Terms & Conditions',
                          style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.teal)),

                    ],
                  ),
                ),
              ],
            ),
          ),

          DefaultButton(text: 'Continue', width: 400, height: 50, press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Menu())
            );

          }, top: 80, left: 15, right: 15, fontsize: 20, color: tiledarkcolor,textcolor: white,fontWeight: FontWeight.normal,),

        ],
      ),
    );
  }
}
