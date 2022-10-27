import 'package:carousel_slider/carousel_slider.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buildNavigationButton()=>FloatingActionButton.extended(
    icon: Icon(Icons.book),
    label: Text("Book Now"),

    backgroundColor: Colors.green,
    
    onPressed: (){print('press Done');});
class merge extends StatefulWidget {
  var  name='Hotel Sea Crown',location = '0.1 km from Kutum Bari Restaurant ,Coxs bazar';
  String description='An elegantly designed hotel GRACE COX is now operating at Coxs Bazar. Having 70 rooms, the extraordinary interior with a splash of eye-catching rooms waiting for you. All the related services will be provided by the hotel looking after your comfortability and satisfaction during your stay with us. The hotel is located just close proximity to the Sughandha sea beach Point. The hotel has a live kitchen with another elegantly decorated Food and Beverage outlet to cater to your needs and kiddies food.An elegantly designed hotel GRACE COX is now operating at Coxs Bazar. Having 70 rooms, the extraordinary interior with a splash of eye-catching rooms waiting for you. All the related services will be provided by the hotel looking after your comfortability and satisfaction during your stay with us. The hotel is located just close proximity to the Sughandha sea beach Point. The hotel has a live kitchen with another elegantly decorated Food and Beverage outlet to cater to your needs and kiddies food.An elegantly designed hotel GRACE COX is now operating at Coxs Bazar. Having 70 rooms, the extraordinary interior with a splash of eye-catching rooms waiting for you. All the related services will be provided by the hotel looking after your comfortability and satisfaction during your stay with us. The hotel is located just close proximity to the Sughandha sea beach Point. The hotel has a live kitchen with another elegantly decorated Food and Beverage outlet to cater to your needs and kiddies food.';
  String H_name = 'Hotel Sea Crown';
  int p=55;
  void hnam(){
    var hname;
    hname ='Hotel Sea Crown';

  }

  @override
  State<merge> createState() => _mergeState();
}

class _mergeState extends State<merge> {
  String get name => name;
  
  Future<void> _launchURL(String url)async{
    final Uri uri = Uri(scheme: "http", host: url);
    if(!await launchUrl(uri,mode: LaunchMode.externalApplication)){
      throw 'failed to open URL';
    };
  }


  Widget titleSection = Container(
    padding:  EdgeInsets.only(right: 32,left: 32,top: 0,bottom: 0),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                //padding:  EdgeInsets.only(bottom: 8),
                child:  Text(
                  'Hotel Sea Crown',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black

                  ),

                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_on,size: 20,color: Colors.green,),
                  Text(
                    'Coxs Bazaar, Chittagong',
                    style: TextStyle(
                      color: Colors.grey[500],fontWeight: FontWeight.bold
                    ),

                  ),
                ],
              ),
            ],
          ),
        ),

        FavoriteButton(
          isFavorite: false,
          // iconDisabledColor: Colors.white,
          valueChanged: (_isFavorite) {
            print('Is Favorite : $_isFavorite');
          },
        ),


      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton( icon: Icon(color: Colors.blue,Icons.call,), onPressed: () {  },),
        IconButton( icon: Icon(color: Colors.blue,Icons.near_me,), onPressed: () {  },),
        IconButton( icon: Icon(color: Colors.blue,Icons.share,), onPressed: () {  },),
      ],
    );
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.name,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600),),
        backgroundColor: Colors.black,


      ),
      body: SingleChildScrollView(


        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: CarouselSlider(
                items: [

                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage("https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(

                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage("https://cf.bstatic.com/xdata/images/hotel/max1280x900/121123916.jpg?k=4c7205e458ef9d368d14ad4aacd8a45c394110e2b51f2de47a1ffb8d1765cfd6&o=&hp=1"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage("https://i.travelapi.com/hotels/10000000/9750000/9746600/9746513/b36e79aa_z.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //4th Image of Slider

                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage("https://i.travelapi.com/hotels/10000000/9750000/9746600/9746513/9b331843_z.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),


                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
            titleSection,
            Center(
              child: (
                Text("Facilities",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 0,
                  fontWeight: FontWeight.bold,

                ),)
              ),
            ),
            SizedBox(width: double.infinity,height: 30,),

            //ListView.builder(itemBuilder: itemBuilder),

            Column(
              children:<Widget>[
                Container(
                  margin: EdgeInsets.all(0),
                  child: Positioned(

                    child: Container(
                      padding: const EdgeInsets.all( 32 ),
                      //margin: EdgeInsets.all(22),
                      width: MediaQuery.of(context).size.width,

                      //height: 200,
                      decoration: BoxDecoration(

                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )
                      ),
                      child: SingleChildScrollView(
                        child:

                          Column(
                            children: [
                              buttonSection,
                              Text("Facilities",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),),
                              Text(widget.description,
                                  style: TextStyle(color: Colors.cyan),
                  ),
                            ],
                          ),




                      ),
                    ),


                ),



              ),
                // ListTile(
                //   title: Title(''),
                // )
        ]
            ),



          ],
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: buildNavigationButton(),

    );


  }
}
class MyBullet extends StatelessWidget{
  const MyBullet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 20.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }

}
Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
class GoogleMap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          body: Container(

          ),
    ));
    throw UnimplementedError();
  }

}