
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/AuthService.dart';

import '../../../constants.dart';
import '../../../models/ChatMessage.dart';
import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {

/*
  Future<void> initState() async {
   // super.initState();
    //FetchMEssage();
    await FirebaseFirestore.instance.collection("adminchats").where('users', isEqualTo: {friendUid: null, currentUserId: null})
        .get().then((value) => {
      chatdocid= value.docs.single.id,
      value.docs.forEach((result) {
        print(result.data());
        FirebaseFirestore.instance.collection("adminchats")
            .doc(chatdocid)
            .collection("messages").orderBy('createdOn', descending: true)
            .get()
            .then((subcol) =>
        {


          subcol.docs.forEach((element) {
            var data;
            data= element.data();


            ddemeChatMessages.add(ChatMessage( data["msg"].toString() ,ChatMessageType.text,MessageStatus.viewed, data["uid"]==AuthService.email ? true : false));

            //ChatMessage();
            // print(msge.text);
            // print(msge.isSender);
            // ddemeChatMessages.add(msge);
            print("hellon world");
            print(ddemeChatMessages.length);
            // print(result.id);
          })
        });
      })
    });

    print("Body come");
  }
*/

  //static Future<Body> create() async => Body();

  Body()
   {

    // AuthService.ddemeChatMessages.add(ChatMessage( "anik is a good boy" ,ChatMessageType.text,MessageStatus.viewed,true ));

     //AuthService.ddemeChatMessages.add(ChatMessage( "He is fine" ,ChatMessageType.text,MessageStatus.viewed,true ));
     print("this is body");
     //AuthService.ddemeChatMessages.clear();
    AuthService.FetchMEssage();

/*


    print(ddemeChatMessages.length);
    for (var item in ddemeChatMessages){
      print(item.text);
    }
    print("i an chat boday");
*/
  }


 // ChatMessage msge = new ChatMessage(messageType: ChatMessageType.text, messageStatus: MessageStatus.viewed, isSender: true);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: AuthService.ddemeChatMessages.length,
              itemBuilder: (context, index) => Message(AuthService.ddemeChatMessages[index]),
            ),
          ),
        ),
        ChatInputField(),

        /*FloatingActionButton(onPressed: (){

          print("floating action button");

          AuthService.FetchMEssage();
          print(AuthService.ddemeChatMessages.length);
          for (var item in AuthService.ddemeChatMessages){
            print(item.text);
          }
          print("i an chat boday");


        }, child: Icon(Icons.add),)

         */
      ],
    );
  }



}
