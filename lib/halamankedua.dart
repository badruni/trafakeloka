import 'package:flutter/material.dart';
import './main.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: new Halamankedua(),
  ));
}

class Halamankedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Halaman Kedua"),
      ),
      body: new Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    child: new Text('Hello'),
                    height: 100.0,
                  ),
                ],
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 5,
              children: [
                Container(color: Colors.red, height: 150.0),
                Container(color: Colors.purple, height: 150.0),
                Container(color: Colors.green, height: 150.0),
                Container(color: Colors.orange, height: 150.0),
                Container(color: Colors.yellow, height: 150.0),
                Container(color: Colors.pink, height: 150.0),
                Container(color: Colors.cyan, height: 150.0),
                Container(color: Colors.indigo, height: 150.0),
                Container(color: Colors.blue, height: 150.0),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  new Card(
                    child: new Container(
                      padding: new EdgeInsets.all(32.0),
                      child: new Column(
                        children: <Widget>[
                          new Text('Hello World'),
                          new Text('How are you?')
                        ],
                      ),
                    ),
                  ),
                  new Card(
                    child: new Container(
                      padding: new EdgeInsets.all(10.0),
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            child: new Row(
                              children: <Widget>[
                                new Image.asset('assets/plane.png',
                                    height: 30, width: 30),
                                new Text('Pesawat'),
                              ],
                            ),
                          ),
                          new Image.asset(
                            'assets/avenger.jpg',
                          ),
                          new Container(),
                        ],
                      ),
                    ),
                  ),
                  new Card(
                    child: RaisedButton(
                      child: Text("Ke Halaman Utama"),
                      onPressed: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new Myapp()));
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
