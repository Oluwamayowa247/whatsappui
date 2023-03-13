import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/my_message_card.dart';
import 'package:whatsapp_clone/widgets/second_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        if (messages[index]["isMe"] == true) {
          //My message card
          return MyMessageCard(
            messages: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
          );
        }
        //sender card
        return SecondMessageCard(
          messages: messages[index]['text'].toString(),
          time: messages[index]['time'].toString(),
        );
      },
    );
  }
}
