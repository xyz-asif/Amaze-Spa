


import 'package:amazespa/details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fone extends StatefulWidget {
  const Fone({super.key});

  @override
  State<Fone> createState() => _FoneState();
}

class _FoneState extends State<Fone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
    stream: FirebaseFirestore.instance
                .collection("patients")
                .where("doctor", isEqualTo: "doctorone")
                .snapshots(),
  builder: (_, snapshot) {
    if (snapshot.hasError) return Text('Error = ${snapshot.error}');

    if (snapshot.hasData) {
      final docs = snapshot.data!.docs;
      return ListView.builder(
        itemCount: docs.length,
        itemBuilder: (_, i) {
          final data = docs[i].data();
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              
              color: Color.fromARGB(255, 2, 56, 11),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                child: Column(
                
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Name : ",style: TextStyle(color: Colors.white54),),Text(data['name'],style: TextStyle(color: Colors.white))],),
                  //  SizedBox(height: 5,),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    //   children: [Text("Adhaar No : ",style: TextStyle(color: Colors.white54)),Text(data['id'].toString(),style: TextStyle(color: Colors.white))],),
                  //  SizedBox(height: 5,),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [Text("Address : ",style: TextStyle(color: Colors.white54)),Text(data['address'].toString(),style: TextStyle(color: Colors.white))],),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("service ",style: TextStyle(color: Colors.white54)),Text(data['service'].toString(),style: TextStyle(color: Colors.white))],),
                   SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("State ",style: TextStyle(color: Colors.white54)),Text(data['state'].toString(),style: TextStyle(color: Colors.white))],),
              //  SizedBox(height: 5,),             
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [Text("Cost : ",style: TextStyle(color: Colors.white54)),Text(data['cost'].toString(),style: TextStyle(color: Colors.white))],),
                  // SizedBox(height: 5,),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [Text("Date : ",style: TextStyle(color: Colors.white54)),Text(data['date'].toString(),style: TextStyle(color: Colors.white))],),
               SizedBox(height: 5,),             
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Country : ",style: TextStyle(color: Colors.white54)),Text(data['country'].toString(),style: TextStyle(color: Colors.white))],),
                 SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Phone No : ",style: TextStyle(color: Colors.white54)),Text(data['number'].toString(),style: TextStyle(color: Colors.white))],),
                SizedBox(height: 5,),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [Text("People : ",style: TextStyle(color: Colors.white54)),Text(data['people'].toString(),style: TextStyle(color: Colors.white))],),
              //  SizedBox(height: 5,),         
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Gender : ",style: TextStyle(color: Colors.white54)),Text(data['sex'].toString(),style: TextStyle(color: Colors.white))],),
                                     SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Phone No : ",style: TextStyle(color: Colors.white54)),Text(data['number'].toString(),style: TextStyle(color: Colors.white))],),
                       SizedBox(height: 5,),
                       Row(children: [
                      ElevatedButton(onPressed: ()async{

          var db = FirebaseFirestore.instance;
          var pointer = db.collection("accept");

          await pointer.add({"name":data["name"],"age":data["age"],"sex":data["sex"],"number":data["number"],
          "state":data["state"],"country":data["country"],"doctor":data["doc"],"service":data["services"]});  


            await FirebaseFirestore.instance
      .collection("patients")
      .doc(snapshot.data!.docs[i].id)
      .delete(); 
                  }, child: Text("Accept",style: TextStyle(fontFamily: "lb",color: Colors.black),)),




SizedBox(width: 8,),
                  




                                        ElevatedButton(onPressed: ()async{

          var db = FirebaseFirestore.instance;
          var pointer = db.collection("deleted");

          await pointer.add({"name":data["name"],"age":data["age"],"sex":data["sex"],"number":data["number"],
          "state":data["state"],"country":data["country"],"doctor":data["doc"],"service":data["services"]});  


            await FirebaseFirestore.instance
      .collection("patients")
      .doc(snapshot.data!.docs[i].id)
      .delete(); 
                  }, child: Text("Delete",style: TextStyle(fontFamily: "lb",color: Colors.black),)),
                       ],)
                  ],
            
                ),
              ),
            ),
          );
        },
      );
    }

    return const Center(child: CircularProgressIndicator());
  },
),);
  }
}