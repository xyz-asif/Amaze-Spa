import 'package:amazespa/docone.dart';
import 'package:amazespa/doctwo.dart';
import 'package:amazespa/fetchone.dart';
import 'package:amazespa/fetchtwo.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});



TextEditingController code = TextEditingController();

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
if(code.text != null && code.text.isNotEmpty){
  if(code.text == "one"){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Fone()),
  );
  }else if(code.text == "two"){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Fetch()),
  );
  }else{
 Navigator.pop(context);
  }
}

     },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Enter Code"),
    content: TextField(controller: code,),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
     var w = MediaQuery.of(context).size.width;
    return Scaffold(
appBar: AppBar(actions: [IconButton(onPressed: (){ showAlertDialog(context);}, icon: Icon(Icons.login))]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:50.0,left: 50,right: 50,bottom: 30),
              child: InkWell( onTap: () {
                  Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Docone()),
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
        
                  height: h/6,
                  child: Center(child: Text("Doctor One"),))),
            ),
                SizedBox(height: h/12,),
           Padding(
             padding: const EdgeInsets.only(top:0.0,bottom: 40,left:50,right: 50),
             child: InkWell(
              onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Doctwo()),
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
        
                 height: h/6,
                child: Center(child: Text("Doctor two"),))),
           ),
      


          SizedBox(
      height: 250,
      child: Lottie.asset('assets/one.zip')),
      
          ],
        ),
      ),
    );
  }
}


