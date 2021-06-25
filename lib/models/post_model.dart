import 'package:flutter/material.dart';
import 'package:four_page_app_template/models/user.dart';


class Post {
  final User sender;
  String caption; // Would usually be type DateTime or Firebase Timestamp in production apps


  Post({
    required this.sender,
    required this.caption,

  });
}

final User current_user = User(
  name: 'joe'
);

final User user2 = User(
    name: 'jim'
);

List<Post> posts = [
  Post(
    sender: current_user,
    caption: "whatsup"
  ),
  Post(
      sender: user2,
      caption: "hey"
  ),
];