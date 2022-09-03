import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class View_Btn extends StatefulWidget {
  const View_Btn({Key? key}) : super(key: key);

  @override
  State<View_Btn> createState() => _View_BtnState();
}

class _View_BtnState extends State<View_Btn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 93,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("I don’t know",style: TextStyle(fontSize: 22)),
        centerTitle: true,
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
                    child: Text("What to file and when",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.start,),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height: Get.height*0.5,
                        child: SingleChildScrollView(child: Text("Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations.",style: TextStyle(color: Colors.black54),))),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
