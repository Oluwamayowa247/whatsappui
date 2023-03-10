import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/colors.dart';

class WebSeaarchBar extends StatelessWidget {
  const WebSeaarchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 0.25,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: dividerColor),
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: searchBarColor,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.search,
                  size: 15,
                ),
              ),
              hintText: 'Search or start a new chat',
              hintStyle: TextStyle(fontSize: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(width: 0, style: BorderStyle.none),
              ),
              contentPadding: const EdgeInsets.all(10)

              // ),
              ),
        ));
  }
}
