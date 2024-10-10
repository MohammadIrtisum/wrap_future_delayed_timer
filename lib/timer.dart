import 'dart:async';

import 'package:flutter/material.dart';

class timer extends StatefulWidget {
  const timer({super.key});

  @override
  State<timer> createState() => _timerState();
}

class _timerState extends State<timer> {
  bool flag = false;
  Timer timer = Timer(Duration.zero, (){});
  Future<void>x() async{
     timer = Timer(const Duration(seconds: 3), (){
      setState(() {
        flag = true;
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    x();
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Wrap(
                spacing: 7,// width spaceing
                runSpacing: 7,//high spaceing
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,//use center and make sure wight and hight
                // direction: Axis.vertical,
                children: [
                  Container(
                    // width: size.width* 0.25,
                    // height: size.width* .06,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Mohammad Irtisum",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width*0.03,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width* 0.25,
                    height: size.width* .06,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Container(
                    width: size.width* 0.25,
                    height: size.width* .06,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Container(
                    width: size.width* 0.25,
                    height: size.width* .06,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Container(
                    width: size.width* 0.25,
                    height: size.width* .06,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  // Center(
                  //   child: Text(flag?"Something":"Nothing",
                  //   style: TextStyle(
                  //     fontSize: 31,
                  //     fontWeight: FontWeight.w900,
                  //   ),
                  //   ),
                  // ),
                ],
              ),
              Center(
                child: Text(flag?"Something":"Nothing",
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
