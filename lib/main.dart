import 'package:flutter/material.dart';
import './halamankedua.dart';

void main() {
  runApp(new MaterialApp(
    title: "Trafakeloka",
    home: new Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/world.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.all(0),
              child: Text('Trafakeloka'),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
        title: Text("Ttem 1"),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){
          Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new Halamankedua()
                )
              );
        },
      ),
      ListTile(
        title: Text("Item 2"),
        trailing: Icon(Icons.arrow_forward),
      ),
          ],
        ),
      ),
      body: new Container(
        // alignment: Alignment.topCenter,
        //padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                height: 90,
                child: Row(
                  children: <Widget>[
                    new Container(
                      // color: Colors.blueGrey,
                      // width: 90,
                      // padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(left: 15),
                      child: new Image.asset('assets/user.png',
                          height: 50, width: 50),
                    ),
                    new Expanded(
                      child: new Container(
                        alignment: Alignment.bottomLeft,
                        // color: Colors.blueGrey[200],
                        // padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Masuk atau Daftar",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal)),
                            new Text(
                              "Nikmati keuntungan member Traveloka!",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                child: Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          new Image.asset('assets/plane.png',
                              height: 50, width: 50),
                          new Text('Pesawat'),
                        ],
                      ),
                    ),
                    new Expanded(
                      child: Column(
                        children: <Widget>[
                          new Image.asset('assets/train.png',
                              height: 50, width: 50),
                          new Text('Kereta'),
                        ],
                      ),
                    ),
                    new Expanded(
                      child: Column(
                        children: <Widget>[
                          new Image.asset('assets/bus.png',
                              height: 50, width: 50),
                          new Text('Bus'),
                        ],
                      ),
                    ),
                    new Expanded(
                      child: Column(
                        children: <Widget>[
                          new Image.asset('assets/car.png',
                              height: 50, width: 50),
                          new Text('Mobil'),
                        ],
                      ),
                    ),
                    new Expanded(
                      child: Column(
                        children: <Widget>[
                          new Image.asset('assets/motor.png',
                              height: 50, width: 50),
                          new Text('Motor'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
