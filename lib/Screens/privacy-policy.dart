import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Privacy_Policy extends StatefulWidget {
  const Privacy_Policy({Key? key}) : super(key: key);

  @override
  State<Privacy_Policy> createState() => _Privacy_PolicyState();
}

class _Privacy_PolicyState extends State<Privacy_Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 93,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Privacy Policy",style: TextStyle(fontSize: 22)),
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
              child: Text("Our Policies are our belief",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),textAlign: TextAlign.start,),
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
