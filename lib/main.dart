import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selecttable.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';








void main() => runApp(DateTimePicker());


class DateTimePicker extends StatefulWidget {


  @override
  _DateTimePickerState createState() => _DateTimePickerState();

}

class _DateTimePickerState extends State<DateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final databaseReference = Firestore.instance;

  String _date = "Not set";
  String _time = "Not set";

  @override
  void initState() {
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[100],

      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.lightGreen[400],


      ),
      body: Align(
        alignment: Alignment.center,

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250.0,
              height: 120.0,
              child:RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.pink[800],
                onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookRoute()),
                );},
                elevation: 4.0,
                child: Text("View Tables", style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,

                ),),

              ),

            ),



          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );



  }



  }





