import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  bool flag = false;

  Future<void>x() async{
    await Future.delayed(const Duration(seconds: 3),(){
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
