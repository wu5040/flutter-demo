import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("微信"),
      ),
      body: new Center(
        child: new Text("这是第一个页面"),
      ),
    );
  }
}
