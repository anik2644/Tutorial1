import 'package:flutter/material.dart';

class TnC_Page extends StatefulWidget {
  const TnC_Page({Key? key}) : super(key: key);

  @override
  State<TnC_Page> createState() => _TnC_PageState();
}

class _TnC_PageState extends State<TnC_Page> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:  AppBar(
        title: const Text("TnC_Page"),
      ),
      body: const Center(
        child: Text("TnC_Page"),
      ),
    );
  }
}
