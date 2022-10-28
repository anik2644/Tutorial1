
import 'package:flutter/material.dart';
import 'package:untitled12/screens/messages/components/chatInputFieldForAllMembers.dart';

import '../../../constants.dart';
import '../../../models/ChatMessage.dart';
import 'chat_input_field.dart';
import 'message.dart';

class BodyForAllChatMembers extends StatelessWidget {

  const BodyForAllChatMembers({
    Key? key,
    required this.indx,
  }) : super(key: key);


  final int indx;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages[indx].messageList.length,
              itemBuilder: (context, index) =>
                  Message(demeChatMessages[indx].messageList[index]),
            ),
          ),
        ),
        ChatInputFieldForALlMEmbers(indx: indx),
      ],
    );
  }
}