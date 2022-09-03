import 'package:calcu_lien/Screens/calc_u_lien.dart';
import 'package:calcu_lien/Screens/contract_detective.dart';
import 'package:calcu_lien/Screens/help.dart';
import 'package:calcu_lien/Screens/lien_zone_podcast.dart';
import 'package:calcu_lien/Screens/line_o_matic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../BottomNavigation/bottomnavigation.dart';
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        systemOverlayStyle: SystemUiOverlayStyle(
         // systemNavigationBarColor: Colors.white, // Navigation bar
          //statusBarColor: Color.fromARGB(255, 255, 255, 255),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavigation(currentindex: 0,))
              );
            },
            child: Container(
              width: 118,
                height: 77,
                alignment: Alignment.center,
                child: Image.asset('assets/Home Logo 1 of 5 - Calc-U-Lien.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Divider(
              height: 2,
              color: Colors.black26,
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavigation(currentindex: 1,))
              );
            },
            child: Container(
                width: double.infinity,
                height: 64,
                alignment: Alignment.center,
                child: Image.asset('assets/Home Logo 2 of 5 - Lien-O-Matic.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Divider(
              height: 2,
              color: Colors.black26,
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavigation(currentindex: 2,))
              );
            },
            child: Container(
                width: 165,
                height: 165,
                alignment: Alignment.center,
                child: Image.asset('assets/Home Logo 3 of 5 - ContractDetective.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Divider(
              height: 2,
              color: Colors.black26,
            ),
          ),

          InkWell(
            onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavigation(currentindex: 3,))
                );

            },
            child: Container(
                width: 207,
                height: 43,
                alignment: Alignment.center,
                child: Image.asset('assets/Splash logo - The Lien Zone.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Divider(
              height: 2,
              color: Colors.black26,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Help())
              );
            },
            child: Container(
                width: 55,
                height: 55,
                alignment: Alignment.center,
                child: Image.asset('assets/Icon material-help-outline.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Divider(
              height: 2,
              color: Colors.black26,
            ),
          ),
        ],
      ),
    );
  }
}
