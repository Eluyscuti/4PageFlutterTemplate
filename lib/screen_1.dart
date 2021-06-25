import 'package:flutter/material.dart';
import 'package:four_page_app_template/post.dart';
import 'package:four_page_app_template/screen_2.dart';
import 'models/post_model.dart';
import 'models/user.dart';

class Screen1 extends StatefulWidget {


  @override
  _Screen1State createState() => _Screen1State();
}


class _Screen1State extends State<Screen1> {
  int index = 0;

  void check_index_add() {
    if (index == posts.length-1){
      ;
    }
    else {
      setState(() {
        index += 1;
      });
    }
  }
  void check_index_subtract() {
    if (index == 0) {
      ;
    }
    else {
      setState(() {
        index -= 1;
      });
    }

  }
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
                          posts[index].sender.name
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
                      check_index_subtract();


                    },
                  child: Text("Previous Post")

                ),
                RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen2()),);


                    },
                    child: Text("Make Post")

                ),
                RaisedButton(
                    onPressed: () {
                      check_index_add();


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
