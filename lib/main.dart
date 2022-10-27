import 'package:untitled12/AuthService.dart';
import 'package:untitled12/Body.dart';
import 'package:untitled12/Drawer.dart';
import 'BottomBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> main()
async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( FunctioN());
}


class FunctioN extends StatefulWidget {
  const FunctioN({Key? key}) : super(key: key);

  @override
  State<FunctioN> createState() => _FunctioNState();
}

class _FunctioNState extends State<FunctioN> {


  get drawer => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    );
  }
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(

        body:  Mybody(),


        drawer: Mydrawer(),

        bottomNavigationBar: Bottom1(),
      ),
    );
  }
}























