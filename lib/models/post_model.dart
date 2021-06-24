import 'package:four_page_app_template/models/user.dart';

class Post {
  final String sender;
  final String caption;

  Post({
    this.sender = '',
    this.caption = ''

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