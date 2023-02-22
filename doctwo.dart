


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'details.dart';

class Doctwo extends StatelessWidget {
  const Doctwo({super.key});

  @override
  Widget build(BuildContext context) {
        var h = MediaQuery.of(context).size.height;
     var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text("SERVICES"),
                        GestureDetector(
                          onTap: () {
                             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  D(doc: "doctortwo", service: " BREAST SURGERIES",)),
  ); 
                          },
                          child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
                                    height: h/12,
                                    width: w/1,
                                    child: Center(child: Text(" BREAST SURGERIES",style: TextStyle(color: Colors.white)))),
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  D(doc: "doctortwo", service: " BODY SCULPTING",)),
  );
                          },
                          child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
                                    height: h/12,
                                    width: w/1,
                                    child: Center(child: Text(" BODY SCULPTING",style: TextStyle(color: Colors.white)))),
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  D(doc: "doctortwo", service: " FACIAL REJUVENATION",)),
  );
                          },
                          child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
                                    height: h/12,
                                    width: w/1,
                                    child: Center(child: Text(" FACIAL REJUVENATION",style: TextStyle(color: Colors.white)))),
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  D(doc: "doctortwo", service: " GENITAL AESTHETIC SURGERY",)),
  );
                          },
                          child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
                                    height: h/12,
                                    width: w/1,
                                    child: Center(child: Text(" GENITAL AESTHETIC SURGERY",style: TextStyle(color: Colors.white)))),
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  D(doc: "doctortwo", service: " PLASTIC SURGERY",)),
  );
                          },
                          child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
                                    height: h/12,
                                    width: w/1,
                                    child: Center(child: Text(" PLASTIC SURGERY",style: TextStyle(color: Colors.white)))),
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  D(doc: "doctortwo", service: "RECONSTRUCTIVE SURGERIES",)),
  );
                          },
                          child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
                                    height: h/12,
                                    width: w/1,
                                    child: Center(child: Text("RECONSTRUCTIVE SURGERIES",style: TextStyle(color: Colors.white)))),
                        ),
                        GestureDetector(
                          onTap: () {
                             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  D(doc: "doctortwo", service: "LASER HAIR REMOVAL",)),
  ); 
                          },
                          child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
                                    height: h/12,
                                    width: w/1,
                                    child: Center(child: Text("LASER HAIR REMOVAL",style: TextStyle(color: Colors.white)))),
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  D(doc: "doctortwo", service: "NON-SURGICAL (FR)",)),
  );
                          },
                          child: Container(
                                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
                                    height: h/12,
                                    width: w/1,
                                    child: Center(child: Text("NON-SURGICAL (FR)",style: TextStyle(color: Colors.white)))),
                        ),
        ]),
      ),
    );
  }
}