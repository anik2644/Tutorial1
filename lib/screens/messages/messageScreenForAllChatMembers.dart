
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/AuthService.dart';
import 'package:untitled12/main.dart';
import 'package:untitled12/screens/messages/components/bodyForAllChatMembers.dart';

import '../../constants.dart';
import '../../models/Chat.dart';
import '../../models/ChatMessage.dart';
import 'components/body.dart';

class messagesScreenForAllChatMembers extends StatelessWidget {


  GlobalKey<RefreshIndicatorState> refreshKey = GlobalKey<RefreshIndicatorState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: RefreshIndicator(
        key: refreshKey,
        child: BodyForAllChatMembers(),
        onRefresh: () async {
          //await refreshList();
          Navigator.pushReplacement(context,  MaterialPageRoute(
              builder: (BuildContext context) => messagesScreenForAllChatMembers()));
        },
      ),
    );
  }


  refreshList()
  {
    //messagesScreenForAllChatMembers();
    print("anik");
  /*  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: messagesScreenForAllChatMembers(),
    );
    */
  }

  AppBar buildAppBar() {
    return AppBar(

      automaticallyImplyLeading: false,

      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: NetworkImage(chatsData[AuthService.indx].image),// AssetImage("assets/images/user_2.png")
            // child: Image.network(chatsData[AuthService.indx].image),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatsData[AuthService.indx].name,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                chatsData[AuthService.indx].time,
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () {

            AuthService.ddemeChatMessages.clear();
            AuthService.FetchMEssage();

          },
        ),
        IconButton(

          icon: Icon(Icons.videocam),
          onPressed: () {

            AuthService.ddemeChatMessages.clear();
            print("In Video");
            print(AuthService.friendUid);
            print(AuthService.currentUserId);
            print("done");
            var chatdocid;
            FirebaseFirestore.instance.collection("adminchats").where('users', isEqualTo: {AuthService.friendUid: null, AuthService.currentUserId: null})
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


                    AuthService.ddemeChatMessages.add(ChatMessage( data["msg"].toString() ,ChatMessageType.text,MessageStatus.viewed, data["uid"]==AuthService.email ? true : false));

                    //ChatMessage();
                    // print(msge.text);
                    // print(msge.isSender);
                    // ddemeChatMessages.add(msge);
                    print("My_world");
                    print(AuthService.ddemeChatMessages.length);
                    // print(result.id);
                  })
                });
              })
            });


            print("My_earth");
            print(AuthService.ddemeChatMessages.length);

            print(AuthService.Profilepicurl.toString());


          },
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],

    );
  }
}