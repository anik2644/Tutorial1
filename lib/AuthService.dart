//Determine if the user is authenticated.

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'LoginPage.dart';
import 'home_page.dart';



class AuthService{


  static String x=  FirebaseAuth.instance.currentUser!.displayName!;
  static String y=  FirebaseAuth.instance.currentUser!.email!;
  static String z= FirebaseAuth.instance.currentUser!.photoURL!;


 static String? Profilepicurl= "https://commons.wikimedia.org/wiki/File:A_black_image.jpg" ; //z.isNotEmpty? z: "https://commons.wikimedia.org/wiki/File:A_black_image.jpg" ;
 static String name = "nothing"; //x.isNotEmpty? x:"nothing";
 static String email = "nothing"; //y.isNotEmpty? y: "nothing";// FirebaseAuth.instance.currentUser!.email!;
 static bool is_login=  name== "nothing" ? false : true;  //false;





  AuthService()
  {

  }


 handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            
            print("i have been come");
            return HomePage();
          } else {
            print("It is really beautiful");
            return const  GoogleSignInApp();  //LoginPage();
          }
        });
  }




/*
  signInWithGoogle() async {


    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn(scopes: <String>["email"]).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  signOut() {
    
   // print("i am signout\n\n\n\n\n\n\n\n\n\n\n\n");

    FirebaseAuth.instance.signOut();
  }

  Backpressed() {

   // Navigator.of(context).pop();

  }
*/

}
