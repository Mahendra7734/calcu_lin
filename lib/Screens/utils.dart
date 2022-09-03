import 'package:calcu_lien/color.dart';
import 'package:flutter/material.dart';
class DefaultButton extends StatelessWidget {
  final String text;
  final Function() press;
  final double width;
  final double height;
  final double left;
  final double right;
  final double top;
  final double fontsize ;
  final Color color;
  final Color textcolor;
  final FontWeight fontWeight;


  const DefaultButton({Key? key,
  required this.text,
    required this.height,
    required this.width,
    required this.press,
    required this.left,
    required this.right,
    required this.top,
    required this.fontsize,
    required this.color,
    required this.textcolor,
    required this.fontWeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container
        (
        margin: EdgeInsets.only(left: left,right: right,top: top),
        alignment: Alignment.center,
        width: width,
        height: height
        ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:color
        ),
        child:styleText(text,textcolor,fontWeight, fontsize)
      ),
    );
  }

}

Text styleText(
    String _value, Color color, FontWeight weight, double _fontSize) {
  return Text(
    _value,
    style: TextStyle(color: color, fontWeight: weight, fontSize: _fontSize),
  );
}

void pushRemove(context, var st) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => st), (route) => false);
}
 // void Redirect(Context, var st){
 //  Navigator.push(context, route)
 // }



