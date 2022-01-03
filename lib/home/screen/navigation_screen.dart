import 'package:flutter/material.dart';
import 'package:habitat/home/screen/home_friend_screen.dart';
import 'package:habitat/home/screen/home_my_screen.dart';
import 'package:habitat/home/widget/home_myhabit_widget.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  late List<Map<String, Object>> _pages;
  int _pageIndex = 0;
  @override
  void initState() {
    _pages = [
      {'page': HomeMyScreen(), 'title': 'Home'},
      {'page': HomeFriendScreen(), 'title': 'Friends'},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_pageIndex]['title'] as String),
      ),
      body: _pages[_pageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _pageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: '내 습관',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.umbrella),
            label: '친구와 함께',
            backgroundColor: Colors.blue,
          )
        ],
        selectedItemColor: Colors.black,
        selectedLabelStyle:
            TextStyle(fontFamily: 'NotoSansKR', fontWeight: FontWeight.bold),
      ),
    );
  }
}
