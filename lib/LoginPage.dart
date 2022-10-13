import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'AuthService.dart';



class GoogleSignInApp extends StatefulWidget {
  const GoogleSignInApp({Key? key}) : super(key: key);

  @override
  State<GoogleSignInApp> createState() => _GoogleSignInAppState();
}

class _GoogleSignInAppState extends State<GoogleSignInApp> {


  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);


  @override
  Widget build(BuildContext context) {

    GoogleSignInAccount? user =_googleSignIn.currentUser;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          title: const Text("Google Sign In (Signed" ),//+ (user==null ? "out" : 'in')  + ")"),,
        ),
        body: Center(
            child: Column(
              children: [
                ElevatedButton(child: Text("Sign In"),onPressed: user !=null ? null :  () async {

                  final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
                  final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

                  // Create a new credential
                  final credential = GoogleAuthProvider.credential(
                    accessToken: googleAuth.accessToken,
                    idToken: googleAuth.idToken,
                  );

                  await FirebaseAuth.instance.signInWithCredential(credential);
                  setState((){

                    print("sign in done\n\n\n");




                  });

                },),
                ElevatedButton(child: Text("Sign Out"),onPressed: user == null ? null :   () async {

                  await _googleSignIn.signOut();
                  FirebaseAuth.instance.signOut();
                  setState((){

                    print(user.email);
                    print("sign out done\n\n\n");

                  });

                },),
              ],
            )),
      ),
    );
  }
}




class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Google Login"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            left: 20, right: 20, top: size.height * 0.2, bottom: size.height * 0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Hello, \nGoogle sign in",
                style: TextStyle(
                    fontSize: 30
                )),
            GestureDetector(
                onTap: () {
                  AuthService().signInWithGoogle();

                },
                child: const Image(width: 100, image: AssetImage('assets/appstore.png'))),
          ],
        ),
      ),
    );
  }
}

