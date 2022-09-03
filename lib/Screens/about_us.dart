import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class About_Us extends StatefulWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 93,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("About Us",style: TextStyle(fontSize: 22)),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          //systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Color.fromARGB(255, 68, 110, 97),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
              child: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),textAlign: TextAlign.start,),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  //height: Get.height*0.5,
                  child: SingleChildScrollView(child: Text("Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.",style: TextStyle(color: Colors.black54),))),
            )
          ],
        ),
      ),
    );
  }
}
