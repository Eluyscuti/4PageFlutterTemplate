import 'package:flutter/material.dart';
import 'package:four_page_app_template/post.dart';
import 'models/post_model.dart';
import 'models/user.dart';

class Screen1 extends StatefulWidget {


  @override
  _Screen1State createState() => _Screen1State();
}


class _Screen1State extends State<Screen1> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      //replace the body with the code for your page
      body: Center(


        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(160.0),
                child: Text(posts[index].caption)

            )



          ],
        )

       ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          index +=1;
        });

      }),

      );
  }
}
