import 'package:flutter/material.dart';

import 'models/post_model.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();


}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(160.0),
        child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Text(posts[index].caption);

        }
        ),
        decoration: BoxDecoration(
            color: Colors.blue
        ),

    );
  }
}