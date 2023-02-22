

import 'package:amazespa/fianl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';




TextEditingController name = TextEditingController();
TextEditingController age = TextEditingController();
TextEditingController sex = TextEditingController();
TextEditingController state = TextEditingController();
TextEditingController country = TextEditingController();
TextEditingController number = TextEditingController();


class D extends StatefulWidget {
  var service,doc;
   D({required this.service, required this.doc});

  @override
  State<D> createState() => _DState();
}
var date;
class _DState extends State<D> {
pick(){
  showDatePicker(
    initialEntryMode: DatePickerEntryMode.calendarOnly,context: context, initialDate: DateTime.now().add(Duration(days: 90)), 
    firstDate:DateTime.now().add(Duration(days: 90)), lastDate:DateTime.now().add(Duration(days: 90)),).then((value) => setState((() {
      date = "${value!.day}-${value.month}-${value.year}";
    })));
}

 getCount() async {
   var x = DateTime.now().add(Duration(days: 90));
 var now = "${x.day}-${x.month}-${x.year}";
    final FirebaseFirestore db = FirebaseFirestore.instance;
    int count = await db
        .collection('patients')
        .where("date", isEqualTo: now.toString())
        .get()
        .then((value) => value.size);
    return count;
  }


  @override
  Widget build(BuildContext context) {
     var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: h/25,right: h/25),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
  
      Text("select Date"),
      IconButton(onPressed: (){
pick();
      }, icon: Icon(Icons.calendar_month,color: Colors.lightBlue,))
    ],
  ),
        
            TextField(
              controller: name,
              decoration: InputDecoration(
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(0, 46, 44, 44), width: 2.0),
                  borderRadius: BorderRadius.circular(23.0),
                ),
                hintText: "Name",
                hintStyle: TextStyle(fontFamily: "pr"),
                fillColor: Color(0xFFBF3F8FF),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23.0),
                    borderSide: BorderSide(
                      color: Color(0xFFBF3F8FF),
                    )),
                prefixIcon: Icon(Icons.boy_outlined),
              ),
            ),
        
        
        
        
                      TextField(
                        controller: age,
                        decoration: InputDecoration(
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(0, 255, 255, 255), width: 2.0),
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          hintText: "Age",
                          hintStyle: TextStyle(fontFamily: "pr"),
                          fillColor: Color(0xFFBF3F8FF),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23.0),
                              borderSide: BorderSide(
                                color: Color(0xFFBF3F8FF),
                              )),
                          prefixIcon: Icon(Icons.height),
                        ),
                      ),
        
        
        
                      TextField(
                        controller: sex,
                        decoration: InputDecoration(
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(0, 255, 255, 255), width: 2.0),
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          hintText: "Gender",
                          hintStyle: TextStyle(fontFamily: "pr"),
                          fillColor: const Color(0xFFBF3F8FF),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23.0),
                              borderSide: BorderSide(
                                color: Color(0xFFBF3F8FF),
                              )),
                          prefixIcon: Icon(Icons.male),
                        ),
                      ),
        
        
        
                      TextField(
                        controller: number,
                        decoration: InputDecoration(
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(0, 255, 255, 255), width: 2.0),
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          hintText: "Number",
                          hintStyle: TextStyle(fontFamily: "pr"),
                          fillColor: Color(0xFFBF3F8FF),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23.0),
                              borderSide: BorderSide(
                                color: Color(0xFFBF3F8FF),
                              )),
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
        
                      TextField(
                        controller: state,
                        decoration: InputDecoration(
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(0, 255, 255, 255), width: 2.0),
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          hintText: "State",
                          hintStyle: TextStyle(fontFamily: "pr"),
                          fillColor: Color(0xFFBF3F8FF),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23.0),
                              borderSide: BorderSide(
                                color: Color(0xFFBF3F8FF),
                              )),
                          prefixIcon: Icon(Icons.location_city),
                        ),
                      ),
                                            TextField(
                        controller: country,
                        decoration: InputDecoration(
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(0, 255, 255, 255), width: 2.0),
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          hintText: "Country",
                          hintStyle: TextStyle(fontFamily: "pr"),
                          fillColor: Color(0xFFBF3F8FF),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23.0),
                              borderSide: BorderSide(
                                color: Color(0xFFBF3F8FF),
                              )),
                          prefixIcon: Icon(Icons.flag),
                        ),
                      ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(height: h/20,width: w/4,
                  child: ElevatedButton(onPressed: ()async{

  var total = await getCount();
  print(total);
if(total < 6){
  print("----------------------------");
    print(total);
 print("----------------------------");


 var x = DateTime.now().add(Duration(days: 90));
 var now = "${x.day}-${x.month}-${x.year}";
 var db = FirebaseFirestore.instance;
          var pointer = db.collection("patients");
          await pointer.add({"name":name.text,"age":age.text,"sex":sex.text,"number":number.text,"state":state.text,"country":country.text,"doctor":widget.doc,"service":widget.service,"date": now.toString()});  
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Last()),
  );
}else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Out of limit...'),
              ));
}

  
                  }, child: Text("save",style: TextStyle(fontFamily: "lb",color: Colors.black),)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



