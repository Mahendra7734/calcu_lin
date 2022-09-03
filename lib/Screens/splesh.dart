import 'dart:async';

import 'package:calcu_lien/Screens/information.dart';
import 'package:flutter/material.dart';
class Splesh extends StatefulWidget {
  const Splesh({Key? key}) : super(key: key);

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Information())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
       child: Image.asset('assets/Splash logo - The Lien Zone.png'),
      ),
    );
  }
}
