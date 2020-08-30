import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("通讯录"),
      ),
      body: new Center(
        child: new Text("这是第二个页面"),
      ),
    );
  }
}
