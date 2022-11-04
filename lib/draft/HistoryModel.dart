import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/main.dart';

import '../models/Hotel.dart';
//import 'hotel_model.dart';

class History_model extends StatefulWidget {

  @override
  State<History_model> createState() => _History_modelState();
}

class _History_modelState extends State<History_model> {

  List<Hotel> display_list = List.from(Myapp.hotelList);

  void updateList(String value) {

  }
  /*
    setState(() {
      /*
      display_list = main_hotels_list
          .where((element) =>
          element.hotel_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });

       */
      )
  }

   */




  @override
  Widget build(BuildContext context) {
     return
       /*
       Scaffold(
      backgroundColor: Colors.white60,//Color(0xFF1f1545),
      appBar: AppBar(
        backgroundColor: Color(0xFF1f1545),
        elevation: 0.0,
        title: Text("Searching"),
      ),
      body:
        */
      Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              decoration: InputDecoration(
                  hintText: 'Search for something',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.favorite)
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: display_list.length == 0
                    ? Center(
                  child: Text(
                    "No result found",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                )
                    : ListView.builder(
                  itemCount: display_list.length,
                  itemBuilder: (context, index) => ListTile(
                    contentPadding: EdgeInsets.all(8),
                    title: Text(
                      display_list[index].name!,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '${display_list[index].location!}',
                      style: TextStyle(color: Colors.white60),
                    ),

                    //trailing: T, rating 12:11
                    leading: Image.network(
                        display_list[index].x!),
                  ),
                ))
          ],
        ),
      );
   // );
  }
}
