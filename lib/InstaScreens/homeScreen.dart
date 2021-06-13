import 'package:flutter/material.dart';
import 'package:ftr_instagramui/bottomIconScreen/accountBottomIconScreen.dart';
import 'package:ftr_instagramui/bottomIconScreen/homeBottomIconScreen.dart';
import 'package:ftr_instagramui/bottomIconScreen/likeBottomIconScreen.dart';
import 'package:ftr_instagramui/bottomIconScreen/plusBottomIconScreen.dart';
import 'package:ftr_instagramui/bottomIconScreen/searchBottomIconScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State {
  var _currentPage;
  int _currentTap=0;
  List page;

  @override
  void initState() {
    super.initState();
    _currentPage=new HomeBottomIconScreen();
    page=[
      HomeBottomIconScreen(),
      searchBottomIconScreen(),
      plusBottomIconScreen(),
      likeBottomIconScreen(),
      accountBottomIconScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var _textStyle = TextStyle(fontSize: 0);
    var _bottomItem = new BottomNavigationBar(
      currentIndex: _currentTap,
        onTap: (int index){
         setState(() {
           _currentTap=index;
           _currentPage=page[index];
         });
        },
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: new Text(
                "",
                style: _textStyle,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.black87,
              )),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              title: new Text(
                "",
                style: _textStyle,
              ),
              activeIcon: Icon(
                Icons.search,
                color: Colors.black87,
              )),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
                color: Colors.grey,
              ),
              title: new Text(
                "",
                style: _textStyle,
              ),
              activeIcon: Icon(
                Icons.add_box,
                color: Colors.black87,
              )),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              title: new Text(
                "",
                style: _textStyle,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.black87,
              )),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              title: new Text(
                "",
                style: _textStyle,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: Colors.black87,
              )),
        ]);
    return new Scaffold(
      bottomNavigationBar: _bottomItem,
      body:_currentPage,
    );
  }
}
