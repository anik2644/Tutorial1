import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {

  @override
  _OfferPageState createState()  => new _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Offers"),
        backgroundColor: Colors.black,
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 250.0,
            margin: EdgeInsets.all(10.0),
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/a.png"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/b.jpg"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/c.png"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/d.jpeg"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/e.jpeg"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            height: 250.0,
            margin: EdgeInsets.all(10.0),
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/a2.jpeg"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/b2.jpeg"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/c2.jpeg"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/d2.jpg"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(17.0),
                    child: new Image(
                      image: new AssetImage("assets/e2.jpg"),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.all(10.0),
            child: new ClipRRect(
              child: new Image(
                image: new AssetImage("assets/early.jpg"),
                height: 200.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.all(10.0),
            child: new ClipRRect(
              child: new Image(
                image: new AssetImage("assets/book.jpg"),
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],

      ),
    );
  }
}
