import 'package:flutter/material.dart';
import 'package:untitled12/draft/HistoryModel.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(
            child: Text("History Page"),
        ),

      ),
      body: History_model(),


      /*
      const Center(

        child: Text("In History"),
        */

      );
  //  );
  }
}
