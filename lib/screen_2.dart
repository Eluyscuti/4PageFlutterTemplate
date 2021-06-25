import 'package:flutter/material.dart';
import 'package:four_page_app_template/models/post_model.dart';
import 'package:four_page_app_template/screen_1.dart';



class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  var new_post = new Post(
    sender: current_user,
    caption: ""

  );
  bool submit = false;

  void createNewPost(value) {
    setState(() {
      new_post.caption = value;
    });
    posts.add(new_post);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
        backgroundColor: Colors.deepOrange,
      ),
      //replace the body with the code for your page
      body: Center(
        child: Column(
          children: [
            TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter caption',

                ),
              onSubmitted: (String value) async {
                setState(() {
                  createNewPost(value);
                  submit = true;
                });
              },


            ),
            RaisedButton(onPressed: () {

              if (submit == true) {
                Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => Screen1()),);
              }


            },
              child: Text("Create Post")
            )
          ],

        ),
      ),
    );
  }
}
