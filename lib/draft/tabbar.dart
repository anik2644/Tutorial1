import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ProductBody(),
        ),
      ),
    );
  }
}

class ProductBody extends StatefulWidget {
  @override
  _ProductBodyState createState() => _ProductBodyState();
}
class _ProductBodyState extends State<ProductBody> with TickerProviderStateMixin{
  late TabController _controller;

  @override
  void initState() {

    _controller = new TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select category:",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),

            Container(
              decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
              child: new TabBar(
                controller: _controller,
                tabs: [
                  Tab(
                    icon: const Icon(Icons.home),
                    text: 'Address',
                  ),
                  Tab(
                    icon: const Icon(Icons.my_location),
                    text: 'Location',
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              child: new TabBarView(
                controller: _controller,
                children: <Widget>[
                  new Card(
                    child: new ListTile(
                      leading: const Icon(Icons.home),
                      title: new TextField(
                        decoration: const InputDecoration(hintText: 'Search for address...'),
                      ),
                    ),
                  ),
                  new Card(
                    child: new ListTile(
                      leading: const Icon(Icons.location_on),
                      title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                      trailing: new IconButton(icon: const Icon(Icons.my_location), onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}