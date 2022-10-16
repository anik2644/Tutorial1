import 'package:flutter/material.dart';

class det2 extends StatefulWidget {
  var  name='Grace Cox Smart Hotel',location = '0.1 km from Kutum Bari Restaurant ,Coxs bazar';
  String description='An elegantly designed hotel GRACE COX is now operating at Coxs Bazar. Having 70 rooms, the extraordinary interior with a splash of eye-catching rooms waiting for you. All the related services will be provided by the hotel looking after your comfortability and satisfaction during your stay with us. The hotel is located just close proximity to the Sughandha sea beach Point. The hotel has a live kitchen with another elegantly decorated Food and Beverage outlet to cater to your needs and kiddies food.An elegantly designed hotel GRACE COX is now operating at Coxs Bazar. Having 70 rooms, the extraordinary interior with a splash of eye-catching rooms waiting for you. All the related services will be provided by the hotel looking after your comfortability and satisfaction during your stay with us. The hotel is located just close proximity to the Sughandha sea beach Point. The hotel has a live kitchen with another elegantly decorated Food and Beverage outlet to cater to your needs and kiddies food.An elegantly designed hotel GRACE COX is now operating at Coxs Bazar. Having 70 rooms, the extraordinary interior with a splash of eye-catching rooms waiting for you. All the related services will be provided by the hotel looking after your comfortability and satisfaction during your stay with us. The hotel is located just close proximity to the Sughandha sea beach Point. The hotel has a live kitchen with another elegantly decorated Food and Beverage outlet to cater to your needs and kiddies food.';
  @override
  State<det2> createState() => _det2State();
}

class _det2State extends State<det2> {
  String get name => name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.name,
            style: const TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w600),),

      ),
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [
               Image.network(
                "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Location',
                      style: TextStyle(color: Colors.white),
                    ), //Text
                  ), //Center
                ), //Card
              ), //Siz
              Text(widget.location,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.amber,
                    fontWeight: FontWeight.w600),),

              const SizedBox(
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Amenities',
                      style: TextStyle(color: Colors.white),
                    ), //Text
                  ), //Center
                ), //Card
              ), //Siz


              const ListTile(
                leading:  MyBullet(),
                title:  Text('Air Conditioning'),
              ),

              const ListTile(
                leading: MyBullet(),
                title: Text('TV'),
              ),

              const ListTile(
                leading: MyBullet(),
                title: Text("Electric Kettle"),
                //leading: CircleAvatar(backgroundImage: AssetImage("tik.png")),
              ),

              const SizedBox(
                child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Description',
                      style: TextStyle(color: Colors.white),
                    ), //Text
                  ), //Center
                ), //Card
              ), //Siz
              Text(widget.description),
              
              ToggleButtons(children: children, isSelected: isSelected)

              ],
          ),
        ),
      ),
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
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
