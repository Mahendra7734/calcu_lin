import 'package:calcu_lien/Screens/an_architect.dart';
import 'package:calcu_lien/Screens/calc_u_lien.dart';
import 'package:calcu_lien/Screens/contract_detective.dart';
import 'package:calcu_lien/Screens/lien_zone_podcast.dart';
import 'package:calcu_lien/Screens/line_o_matic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BottomNavigation extends StatefulWidget {
  int currentindex ;
   BottomNavigation({Key? key, required this.currentindex}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int?_index ;

  final _pageoption = [ Calc_u_Lien(),Line_O_Matic(), Contract_Detective(), Lien_zone_podcast()];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _index= widget.currentindex;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pageoption[_index!],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              iconSize: 20,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color.fromARGB(255, 68, 110, 97),
              unselectedFontSize: 12,
              selectedFontSize: 12,
              unselectedItemColor: Colors.black,
              // selectedLabelStyle:
              //     GoogleFonts.hind( fontWeight: FontWeight.normal),
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/1st.svg",
                      color: _index == 0
                          ? Color.fromARGB(255, 68, 110, 97)
                          : Color.fromARGB(255, 151, 151, 151),
                    ),
                    label: "calc_u"
                ),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/bx_detail.svg",
                      color: _index == 1
                          ? Color.fromARGB(255, 68, 110, 97)
                          : Color.fromARGB(255, 151, 151, 151),
                    ),
                    label: "line_o_matic"
                ),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/3rd.svg",
                      color: _index == 2
                          ? Color.fromARGB(255, 68, 110, 97)
                          : Color.fromARGB(255, 151, 151, 151),
                    ),
                    label: "contract_de"
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/4.svg",
                    color: _index == 3
                        ? Color.fromARGB(255, 68, 110, 97)
                        : Color.fromARGB(255, 151, 151, 151),
                  ),
                  label: "lien_zone",
                ),

              ],
              currentIndex: _index!,
              onTap: (index) {
                setState(() {
                  _index = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
