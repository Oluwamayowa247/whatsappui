import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        info[index]['profilePic'].toString(),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        info[index]['message'].toString(),
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                );
              }),
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  color: dividerColor,
                  height: 30,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
