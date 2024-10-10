import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Wrap(
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
            ],
          ),
        ),
      ),
    );
  }
}

