import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHPage extends StatefulWidget {
  MyHPage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHPageState createState() => _MyHPageState();
}

class _MyHPageState extends State<MyHPage> {
  int _counter3 = 0;

  void _incrementCounter() {
    setState(() {
      if(_counter3<2)
        _counter3++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.grey[100],
      appBar: AppBar(

        title: Text("Book Table"),
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
                onPressed: (){},
                elevation: 4.0,
                child: Text("Tables booked: $_counter3", style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,

                ),),

              ),

            ),
            Padding(padding: const EdgeInsets.all(50.0),),

            Container(
              width: 180.0,
              height: 100.0,
              child:RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.pink[800],
                onPressed: (){},
                elevation: 1.0,
                child: Text("Checkout",style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,

                ),),

              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.lightGreen[400],
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
