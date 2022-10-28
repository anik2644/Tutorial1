
import 'package:flutter/material.dart';
import 'package:untitled12/AuthService.dart';
import 'package:untitled12/screens/messages/components/chatInputFieldForAllMembers.dart';

import '../../../constants.dart';
import '../../../models/ChatMessage.dart';
import 'chat_input_field.dart';
import 'message.dart';

class BodyForAllChatMembers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages[AuthService.indx].messageList.length,
              itemBuilder: (context, index) =>
                  Message(demeChatMessages[AuthService.indx].messageList[index]),
            ),
          ),
        ),
        ChatInputFieldForALlMEmbers(),
      ],
    );
  }
}