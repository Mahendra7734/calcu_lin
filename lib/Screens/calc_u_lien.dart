import 'package:calcu_lien/Screens/utils.dart';
import 'package:calcu_lien/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Calc_u_Lien extends StatefulWidget {
  const Calc_u_Lien({Key? key}) : super(key: key);

  @override
  State<Calc_u_Lien> createState() => _Calc_u_LienState();
}

class _Calc_u_LienState extends State<Calc_u_Lien> {

  DateTime _currentdate=DateTime.now();
  Future<Null>_datechange(BuildContext context)async{
    final DateTime? _datechange=await showDatePicker(context: context,
        initialDate: _currentdate,
        firstDate: DateTime(2001),
        lastDate: _currentdate);
    if(_datechange!=null){
      setState(() {
        _currentdate=_datechange;
      });
    }
  }

  DateTime _currentdate1=DateTime.now();
  Future<Null>_datechange1(BuildContext context)async{
    final DateTime? _datechange1=await showDatePicker(context: context,
        initialDate: _currentdate1,
        firstDate: DateTime(2001),
        lastDate: _currentdate1);
    if(_datechange1!=null){
      setState(() {
        _currentdate1=_datechange1;
      });
    }
  }
  String noticevalue="Florida notice to owner(45 Days)";
  var Notice=['Florida notice to owner(45 Days)',];
  @override
  Widget build(BuildContext context) {
    String dob=DateFormat.yMMMd().format(_currentdate);
    String _joningdate=DateFormat.yMMMd().format(_currentdate1);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height*0.2,
              width: Get.width*1,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 68, 110, 97),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),


                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('assets/Home Logo 1 of 5 - Calc-U-Lien.png',color: Colors.white,),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
              child:Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: DropdownButton<String>(
                    isExpanded: true,

                    value: noticevalue,
                    onChanged: (String? newValue) =>
                        setState(() => noticevalue = newValue!),
                    items: Notice
                        .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                        .toList(),

                    // add extra sugar..
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 42,
                    underline: SizedBox(),

                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 45,
                    child: Card(
                      elevation: 3,
                      child: Row(

                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: IconButton(onPressed: (){
                              _datechange1(context);
                            }, icon: Icon(Icons.date_range,color: Color.fromARGB(
                                255, 68, 110, 97))),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 35),
                              child: Text('$_joningdate',style: TextStyle(color: Color.fromARGB(
                                  255, 68, 110, 97)),)),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 45,
                    child: Card(
                      elevation: 3,
                      child: Row(

                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: IconButton(onPressed: (){
                              _datechange1(context);
                            }, icon: Icon(Icons.date_range,color: Color.fromARGB(
                                255, 68, 110, 97))),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 35  ),
                              child: Text('$_joningdate',style: TextStyle(color: Color.fromARGB(
                                  255, 68, 110, 97)),)),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text("Florida notice to owner(45 Days)",style: TextStyle(color: Color.fromARGB(
                  255, 68, 110, 97),fontSize: 18),),
            ),
            DefaultButton(text: 'Need Help ?', width: 400, height: 50, press: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => Menu())
              // );

            }, top: 80, left: 15, right: 15, fontsize: 20, color: tiledarkcolor,textcolor: white,fontWeight: FontWeight.normal,),
          ],
        ),
      ),
    );
  }
}
