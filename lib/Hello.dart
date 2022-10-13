
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MHP extends StatefulWidget {
  @override
  State<MHP> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MHP> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Center(child: Text("My Fetch data")),
        ),
        body: Container(
          color: Colors.green, height: 200, width: 200,
        )
    );


    /*
       FutureBuilder(

         future: getData() ,
         builder: (_,snapshot){
           return ListView.builder(
               itemCount: snapshot.data!.length,
               itemBuilder: (_,int index){

                 // if(snapshot.hasData)
                 //   {
                 //
                 //    // Object data = snapshot.data!;
                 //    // DocumentSnapshot data = snapshot.data[index];
                 //
                 //   }

                 //var data = snapshot.data! as ListTile;
                 //DocumentSnapshot data = snapshot.data.;
                 return ListTile(
                  // title: Text(data["Name"]),
                 title: Text(snapshot.data!.docs[index]['Name']),
                 );

               }
           );
         },
       ),*/

  }
}

