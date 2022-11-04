import 'package:flutter/material.dart';
import 'package:untitled12/BottomBar.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: fav(),
    );
  }
}


List<String> mainDataList = [
  "Apple",
  "Apricot",
  "Banana",
  "Blackberry",
  "Coconut",
  "Date",
  "Fig",
  "Gooseberry",
  "Grapes",
  "Lemon",
  "Litchi",
  "Mango",
  "Orange",
  "Papaya",
  "Peach",
  "Pineapple",
  "Pomegranate",
  "Starfruit"
];

List<String> favoriteDataList = [];

class fav extends StatefulWidget {
  const fav({Key? key}) : super(key: key);

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Bottom1() ,
      body: SafeArea(
        child: TabBarView(
          children: [
            ListView.builder(
              itemCount: mainDataList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            mainDataList[index],
                            style: const TextStyle(fontSize: 19.0),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            favoriteDataList.add(mainDataList[index]);
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepPurple,
                          ),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            favoriteDataList.isEmpty
                ? const Center(
              child: Text(
                'There are no favorites yet!',
                style: TextStyle(color: Colors.black),
              ),
            )
                : ListView.builder(
              itemCount: favoriteDataList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            favoriteDataList[index],
                            style: const TextStyle(fontSize: 19.0),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            favoriteDataList
                                .remove(favoriteDataList[index]);
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(
                            Colors.deepPurple,
                          ),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );

  }
}
