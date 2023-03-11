import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //Profile Bar
                  WebProfileBar(),
                  //searchbar
                  WebSeaarchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/asset/images/backgroundImage.png'),
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
