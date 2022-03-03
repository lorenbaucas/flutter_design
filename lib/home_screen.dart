import 'package:flutter/material.dart';
import 'body.dart';
import 'appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffebebeb),
        appBar: customAppBar(),
        body: Body(),
      ),
    );
  }
}
