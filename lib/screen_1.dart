import 'package:flutter/material.dart';
import 'package:four_page_app_template/post.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List users = ['jorge', 'buster', 'jonny'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //replace the body with the code for your page
      body: Center(
        child: Post(),

      ),
    );
  }
}
