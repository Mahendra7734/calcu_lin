import 'package:calcu_lien/Screens/privacy-policy.dart';
import 'package:calcu_lien/Screens/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 93,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Setting",style: TextStyle(fontSize: 22)),
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
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Privacy_Policy())
                );
              },
              child: ExpansionTile(
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
                      child: SvgPicture.asset('assets/Group 19(6).svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Privacy Policy",
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
            ),
            Divider(
              height: 1,
              color: Colors.black54,
            ),

            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Terms_and_Conditions())
                );
              },
              child: ExpansionTile(
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
                      child: SvgPicture.asset('assets/Group 19(7).svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Terms and Conditions",
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
