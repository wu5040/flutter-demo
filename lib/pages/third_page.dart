import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("发现"),
      ),
      body: new Center(
        child: new Text("这是第三个页面"),
      ),
    );
  }
}
