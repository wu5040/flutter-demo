import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FourthPageState();
}

class FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("我"),
      ),
      body: new Center(
        child: new Text("这是第四个页面"),
      ),
    );
  }
}
