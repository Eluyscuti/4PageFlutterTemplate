import 'package:flutter/material.dart';
import 'package:four_page_app_template/models/user.dart';


class Post {
  final String sender;
  final String caption; // Would usually be type DateTime or Firebase Timestamp in production apps


  Post({
    required this.sender,
    required this.caption,

  });
}
List<Post> posts = [
  Post(
    sender: 'joe',
    caption: "whatsup"
  ),
  Post(
      sender: 'mama',
      caption: "hey"
  ),
];