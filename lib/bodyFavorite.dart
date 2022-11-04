import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled12/hotel_descriptions/hotel_description.dart';
import 'package:untitled12/main.dart';
import 'package:untitled12/models/Hotel.dart';


class bodyFavorite extends StatefulWidget {
  const bodyFavorite({Key? key}) : super(key: key);

  @override
  State<bodyFavorite> createState() => _bodyFavoriteState();
}

List<Hotel> favList=[];

class _bodyFavoriteState extends State<bodyFavorite> {

  // List<Hotel> display_list = List.from(Myapp.hotelList);void updateList(String value) {
  //   setState(() {
  //     display_list = Myapp.hotelList
  //         .where((element) =>
  //         element.name!.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }



  GestureDetector MyArticles(String imageVal, String hotelname, String hotellocation,int index) {

    return GestureDetector(
      onTap: () {
        Myapp.selectedHotel= index;
        print(Myapp.selectedHotel);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => hotel_description()));
      },

      child: Container(
        width: 160.0,
        child: Card(
          child: Wrap(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.width/2 ,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        imageVal
                    ),
                    fit: BoxFit.cover,),// child: Image.network(imageVal)
                ),


              ),

              ListTile(
                title: Text(hotelname),
                subtitle: Text(hotellocation),
              ),
            ],
          ),
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return  CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
//floating: true,
// pinned: true,
// snap: false,
          centerTitle: true,
          title: const Text('Favorites',style: TextStyle(fontSize: 25),),


        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                //margin: EdgeInsets.all( 10.0),
                height: 900,
                child:  ListView.builder(
                  itemCount: favList.length,
                  itemBuilder: (context, index) => MyArticles(
                      favList[index].x,
                      favList[index].name,
                      "Coxs Bazaar, Bangladesh",1

                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
