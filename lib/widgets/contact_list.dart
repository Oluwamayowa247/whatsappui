import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MobileChatScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    info[index]['name'].toString(),
                  ),
                  trailing: Text(
                    info[index]['time'].toString(),
                    style: TextStyle(fontSize: 10),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      info[index]['profilePic'].toString(),
                    ),
                    radius: 20,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      info[index]['message'].toString(),
                      style: TextStyle(
                          fontSize: 13, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ),
              Divider(
                color: dividerColor,
                height: 30,
              ),
            ],
          );
        }),
      ),
    );
  }
}
