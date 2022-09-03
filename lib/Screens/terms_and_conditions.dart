import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Terms_and_Conditions extends StatefulWidget {
  const Terms_and_Conditions({Key? key}) : super(key: key);

  @override
  State<Terms_and_Conditions> createState() => _Terms_and_ConditionsState();
}

class _Terms_and_ConditionsState extends State<Terms_and_Conditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 93,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Terms and Conditions",style: TextStyle(fontSize: 22),),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          //systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Color.fromARGB(255, 68, 110, 97),
        ),
      ),
      body:

      Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
              child: Text("Terms and Conditions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),textAlign: TextAlign.start,),
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
