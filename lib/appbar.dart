import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

PreferredSize? customAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Text(
          "Anime",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff171717),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.search,
              color: Color(0xff171717),
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0, right: 10),
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.bell,
              color: Color(0xff171717),
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
