import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

import 'Facilities.dart';
import 'descriptions.dart';

Widget buildNavigationButton() => FloatingActionButton.extended(
    icon: Icon(Icons.book),
    label: Text("Book Now"),
    backgroundColor: Colors.green,
    onPressed: () {
      print('press Done');
    });

class hotel_description extends StatefulWidget {
  var name = 'SHELTA',
      location = '0.1 km from Kutum Bari Restaurant ,Coxs bazar';
  String description =
      'An elegantly designed hotel GRACE COX is now operating at Coxs Bazar. Having 70 rooms, the extraordinary interior with a splash of eye-catching rooms waiting for you. All the related services will be provided by the hotel looking after your comfortability and satisfaction during your stay with us. The hotel is located just close proximity to the Sughandha sea beach Point. The hotel has a live kitchen with another elegantly decorated Food and Beverage outlet to cater to your needs and kiddies food.An elegantly designed hotel GRACE COX is now operating at Coxs Bazar. Having 70 rooms, the extraordinary interior with a splash of eye-catching rooms waiting for you. All the related services will be provided by the hotel looking after your comfortability and satisfaction during your stay with us. The hotel is located just close proximity to the Sughandha sea beach Point. The hotel has a live kitchen with another elegantly decorated Food and Beverage outlet to cater to your needs and kiddies food.An elegantly designed hotel GRACE COX is now operating at Coxs Bazar. Having 70 rooms, the extraordinary interior with a splash of eye-catching rooms waiting for you. All the related services will be provided by the hotel looking after your comfortability and satisfaction during your stay with us. The hotel is located just close proximity to the Sughandha sea beach Point. The hotel has a live kitchen with another elegantly decorated Food and Beverage outlet to cater to your needs and kiddies food.';
  String H_name = 'Hotel Sea Crown';

  hotel_description({super.key});

  @override
  State<hotel_description> createState() => _hotel_descriptionState();


}

class _hotel_descriptionState extends State<hotel_description> {
  String get name => name;
  @override
  Widget build(BuildContext context) {
    // Color color = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.name,
          style: const TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 700,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    TnC_logo,
                    Terms1(),
                    Terms2(),
                    Terms3(),
                    Terms4(),
                    Terms5(),
                    Terms6(),

                    SizedBox(
                      height: 80,
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: buildNavigationButton(),
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

class GoogleMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          body: Container(),
        ));
    throw UnimplementedError();
  }
}
