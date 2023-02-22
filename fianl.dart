


import 'package:amazespa/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Last extends StatelessWidget {
  const Last({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
    
    SizedBox(
        height: 250,
        child: Lottie.asset('assets/amazespa.zip')),
    Text("               Thank You..! \n we will get back to y ou soon"),
    TextButton(onPressed: (){
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  HomeScreen()),
        );
    }, child: Text("DONE"))
          ],
        ),
      ),
    );
  }
}