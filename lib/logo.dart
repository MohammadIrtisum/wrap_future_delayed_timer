import 'dart:async';

import 'package:flutter/material.dart';

class logo extends StatefulWidget {
  const logo({super.key});

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  bool shouldAnimate = false,shouldShowText = false;
  bool shouldAnimate2 = false;
  Timer timer = Timer(Duration.zero, (){});
  Future<void>x() async{
    timer = Timer(const Duration(seconds: 3), (){
      setState(() {
        shouldAnimate  = true;

      });
    });
  }
  Future<void>y() async{
    timer =Timer(const Duration(seconds: 6),(){
      setState(() {
           shouldAnimate2= true;
           shouldShowText= true;
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    x();
    y();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.width * .55,
                width: size.width *.55,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 555),
                      curve: Curves.decelerate,
                      width:shouldAnimate2? size.width*.55:size.width*.41,
                      height:shouldAnimate2? size.width*.55:size.width*.41,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 555),
                      curve: Curves.decelerate,
                      width:shouldAnimate? size.width*.48:size.width*.41,
                      height:shouldAnimate? size.width*.48:size.width*.41,
                      decoration: BoxDecoration(
                        color: Color(0xff2C2B2BFF),
                        borderRadius: BorderRadius.circular(1000),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 555),
                      curve: Curves.decelerate,
                      width: size.width*.41,
                      height: size.width*.41,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedOpacity(opacity: shouldShowText?1:0, duration: const Duration(milliseconds: 999),
              child: Text("\nRIPPLES",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 31,
              ),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
