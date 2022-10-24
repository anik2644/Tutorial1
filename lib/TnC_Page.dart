import 'package:flutter/material.dart';

class TnC_Page extends StatefulWidget {

  String description="Hello and welcome! We are glad that you are taking the time to read these terms of service .These Terms are important as they, together with your booking confirmation email (the “Booking Confirmation”), set out the legal terms on which Travel Services are made available to you through our Service. They also cover any interactions or communications you have with us through our Service.Your use of our Service is conditioned upon your acceptance of these Terms. To book a Travel Service, you must also accept these Terms. If you do not accept these Terms, then please do not use our Service or book a Travel Service.We may change these Terms at any time and your future use of our Service following changes to these Terms is subject to you accepting those updated Terms. We recommend that you save or print a copy of these Terms.In these Terms:";


  @override
  State<TnC_Page> createState() => _TnC_PageState();
}

class _TnC_PageState extends State<TnC_Page> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("TnC_Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Text(widget.description,style: TextStyle(fontSize: 20, ),),
              SizedBox(height: 20,width: 20,),
              Text(widget.description,style: TextStyle(fontSize: 20, color: Colors.red, fontStyle: FontStyle.italic),),

            ],
        ),
      ),
    );
  }
}
