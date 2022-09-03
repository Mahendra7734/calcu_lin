import 'package:calcu_lien/Screens/about_us.dart';
import 'package:calcu_lien/Screens/help_and_support.dart';
import 'package:calcu_lien/Screens/how_app_works.dart';
import 'package:calcu_lien/Screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 93,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Help",style: TextStyle(fontSize: 22)),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          //systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Color.fromARGB(255, 68, 110, 97),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset('assets/Group 19.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Educational Videos",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_right
                      : Icons.keyboard_arrow_right),
                ),


            ),
            Divider(
              height: 1,
              color: Colors.black54,
            ),

            ExpansionTile(
              onExpansionChanged: (b) {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              title: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => How_App_Works())
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset('assets/Group 19(1).svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "How app works?",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(_isExpanded
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_right),
              ),


            ),
            Divider(
              height: 1,
              color: Colors.black54,
            ),

            ExpansionTile(
              onExpansionChanged: (b) {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              title: Row(
                children: [
                  Container(
                    height: 22,
                    width: 22,
                    child: SvgPicture.asset('assets/Group 19(2).svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Call me for live assitance",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(_isExpanded
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_right),
              ),


            ),
            Divider(
              height: 1,
              color: Colors.black54,
            ),

            ExpansionTile(
              onExpansionChanged: (b) {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              title: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Help_And_Support())
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset('assets/Group 19(3).svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Help and Support",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(_isExpanded
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_right),
              ),


            ),
            Divider(
              height: 1,
              color: Colors.black54,
            ),

            ExpansionTile(
              onExpansionChanged: (b) {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              title: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => About_Us())
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset('assets/Group 19(4).svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "About Us",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(_isExpanded
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_right),
              ),


            ),
            Divider(
              height: 1,
              color: Colors.black54,
            ),

            ExpansionTile(
              onExpansionChanged: (b) {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              title: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Setting())
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset('assets/Group 19(5).svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Setting",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(_isExpanded
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_right),
              ),


            ),
            Divider(
              height: 1,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
