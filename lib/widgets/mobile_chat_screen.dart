import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]["name"].toString(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'lib/asset/images/p7.jpeg',
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
              fillColor: searchBarColor,
              prefixIcon: Icon(
                Icons.emoji_emotions_rounded,
              ),
              suffixIcon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.attach_file),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt),
                  )
                ],
              ),
              filled: true,
              hintText: 'Type a Message',
              hintStyle: TextStyle(
                fontSize: 13,
                color: Colors.white
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: EdgeInsets.only(
                left: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
