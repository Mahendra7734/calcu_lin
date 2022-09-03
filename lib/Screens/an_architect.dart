import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class An_Architect extends StatefulWidget {
  const An_Architect({Key? key}) : super(key: key);

  @override
  State<An_Architect> createState() => _An_ArchitectState();
}

class _An_ArchitectState extends State<An_Architect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 93,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Select your role"),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          //systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Color.fromARGB(255, 68, 110, 97),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 120,
       margin: EdgeInsets.only(top: 20,left: 20),
            child: Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context ,int index ){
                    return SizedBox(
                      width: Get.width*0.6,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("An Architect",style: GoogleFonts.hind(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                              Text("(my contract is with the owner, architect or engineer)",style: GoogleFonts.hind(
                                  fontSize: 15,
                                  color: Colors.black54
                                  ),textAlign: TextAlign.start,),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
            child: Card(
              elevation: 4,
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
                        child: SingleChildScrollView(child: Text("Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.Wikipedia is edited entirely by volunteers, and supported by reader donations. You can help Wikipedia grow by learning how to edit today. Many people start with something as simple as fixing a spelling mistake or adding some missing information to an existing article.",style: TextStyle(color: Colors.black54),))),
                  )
                ],
              ),
            ),
          ),        ],
      ),
    );
  }
}
