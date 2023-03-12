import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        if(messages[index]["isMe"]== true){
          //My message card 
          return Text('Faruq is mad');
        }
        //sender card
        return Text('Wunmi is mad');
      },
    );
  }
}
