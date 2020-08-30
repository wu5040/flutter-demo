import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/first_page.dart';
import 'package:my_flutter_app/pages/fourth_page.dart';
import 'package:my_flutter_app/pages/second_page.dart';
import 'package:my_flutter_app/pages/third_page.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => _HomePageState();
}

PageController pageController;

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> pageViews = [
    Container(color: Colors.white, child: FirstPage()),
    Container(color: Colors.white, child: SecondPage()),
    Container(color: Colors.white, child: ThirdPage()),
    Container(color: Colors.white, child: FourthPage()),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 导航栏
      // appBar: AppBar(
      //   title: Text("微信"),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.add),
      //       onPressed: () {},
      //     )
      //   ],
      // ),

      // 页面
      body: PageView(
        children: [
          Container(color: Colors.white, child: FirstPage()),
          Container(color: Colors.white, child: SecondPage()),
          Container(color: Colors.white, child: ThirdPage()),
          Container(color: Colors.white, child: FourthPage()),
        ],
        controller: pageController,
        physics: NeverScrollableScrollPhysics(), // 禁止滑动
        onPageChanged: _onPageChanged,
      ),

      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), title: Text('微信')),
          BottomNavigationBarItem(icon: Icon(Icons.group), title: Text('通讯录')),
          BottomNavigationBarItem(icon: Icon(Icons.more), title: Text('发现')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.green,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int page) {
    pageController.jumpToPage(page);
  }

  void _onPageChanged(int index) {
    setState(() {
      this._selectedIndex = index;
    });
  }
}
