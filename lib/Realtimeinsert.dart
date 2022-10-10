import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Realtimeinsert extends StatefulWidget {
  const Realtimeinsert({Key? key}) : super(key: key);

  @override
  State<Realtimeinsert> createState() => _RealtimeinsertState();
}

class _RealtimeinsertState extends State<Realtimeinsert> {

  var nameCOntroller = new TextEditingController();
  var ageCOntroller = new TextEditingController();
  var cityCOntroller = new TextEditingController();

  final databaseref= FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Text("Insert Data", style: TextStyle(fontSize: 28),),
            SizedBox(height: 30,),
            TextFormField( controller: nameCOntroller,decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder()), ),
            SizedBox(height: 15,),
            TextFormField( controller: ageCOntroller,decoration: InputDecoration(labelText: 'Age', border: OutlineInputBorder()),),
            SizedBox(height: 15,),
            TextFormField( controller: cityCOntroller,decoration: InputDecoration(labelText: 'City', border: OutlineInputBorder()),),
            SizedBox(height: 50,),
            RaisedButton(onPressed: (){

              if(nameCOntroller.text.isNotEmpty && ageCOntroller.text.isNotEmpty && cityCOntroller.text.isNotEmpty)
                {
                  insertdata(nameCOntroller.text, ageCOntroller.text, cityCOntroller.text);
                }

            },child: Text("Add"),)
           // Button



          ],
        ),
      ),
    );
  }
  void insertdata(String name,String age,String city)
  {
      databaseref.child('path').push().set({
        'name': name,
        'age': age,
        'city': city,
      });
  }

}
