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
        backgroundColor: Colors.deepOrange,
      ),
      //replace the body with the code for your page
      body: Center(


        child: Column(

          children: [
            Container(
              margin: EdgeInsets.all(160.0),
                padding: EdgeInsets.all(160.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          posts[index].sender
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          posts[index].caption
                        ),
                      ],
                    ),
                  ],
                ),

                decoration: BoxDecoration(
                  color: Colors.amber,

                ),

            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                    onPressed: () {
                      setState(() {
                        index -=1;
                      });


                    },
                  child: Text("Previous Post")

                ),
                RaisedButton(
                    onPressed: () {
                      setState(() {
                        index +=1;
                      });


                    },
                    child: Text("Next Post")

                )
              ],
            )



          ],

        ),


       ),


      );
  }
}
