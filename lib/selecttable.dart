import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'book.dart';
import 'booking.dart';
import 'booking1.dart';
import 'booking2.dart';
import 'booking3.dart';
import 'main.dart';


class BookRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Colors.grey[100],
      appBar: AppBar(
        title: Text("Table Size View"),
        backgroundColor: Colors.lightGreen[400],
      ),
      body:Container(

          padding: EdgeInsets.all(1.0),

          child: GridView.count(
            padding: EdgeInsets.all(2.0),
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 50.0,

            children: <Widget>[
              Column(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Image.asset(
                        'images/2chair.jpg',

                      ),

                      onPressed: () {


                      },

                    ),

                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: Colors.pink[800],
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DateTimePickerr()),
                      );
                    },
                    elevation: 4.0,
                    child: Text("Two-Chairs Table", style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),),

                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Image.asset(
                        'images/images.jpg',

                      ),

                      onPressed: () {


                      },

                    ),

                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: Colors.pink[800],
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DateTimePickkerr()),
                      );
                    },
                    elevation: 4.0,
                    child: Text("Four-Chairs Table", style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),),

                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Image.asset(
                        'images/download.jpg',

                      ),

                      onPressed: () {


                      },

                    ),

                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: Colors.pink[800],
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DateTimePickerrrr()),
                      );
                    },
                    elevation: 4.0,
                    child: Text("Six-Chairs Table", style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),),

                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Image.asset(
                        'images/10 chair.jpg',

                      ),

                      onPressed: () {


                      },

                    ),

                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    color: Colors.pink[800],
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DateTimePickerrrrr()),
                      );
                    },
                    elevation: 4.0,
                    child: Text("Ten-Chairs Table", style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),),

                  ),

                ],

              ),










            ],
          )

      ),

      );








  }
}