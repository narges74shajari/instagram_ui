import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomIconScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.4,
        bottom: _appBar(context),
      ),
      body: _body(),
    );
  }

  _appBar(context) {
    return PreferredSize(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new IconButton(icon: Icon(Icons.photo_camera), onPressed: () {}),
          new Text(
            "Instagram",
            style: TextStyle(
              fontFamily: 'FontsFree-Net-Billabong',
              fontSize: 30,
            ),
          ),
          new IconButton(icon: Icon(Icons.send), onPressed: () {
            Navigator.of(context).pop();
          })
        ],
      ),
      preferredSize: Size.fromHeight(0.0),
    );
  }

  _body() {
    return new Container(
      child: new Column(
        children: <Widget>[_listView()],
      ),
    );
  }

  _listView() {
    return Container(
      child: Expanded(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return new Container(
                  child: (index == 0)
                      ? _floatPic()
                      : new Container(
                          height: 400,
                          child: new Column(
                            children: <Widget>[
                              _titleFriend(index),
                              _listImage(),
                              _listBottom(),
                              _listBottomData()
                            ],
                          ),
                        ));
            }),
      ),
    );
  }

  _floatPic() {
    return Container(
      height: 100,
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: new ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                    margin: EdgeInsets.all(10),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 60,
                          width: 60,
                          child: ClipOval(
                              child: new Image.asset(
                            index == 0
                                ? "assets/you.jpg"
                                : "assets/account.png",
                            fit: BoxFit.cover,
                          )),
                        ),
                        new Text(index == 0 ? "You" : "frinds$index")
                      ],
                    ),
                  );
                }),
          ),
          new Container(
            height: 0.5,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }

  _titleFriend(index) {
    return Container(
      margin: EdgeInsets.all(8),
      child: new Row(
        children: <Widget>[
          new Image.asset(
            "assets/account.png",
            height: 40,
          ),
          new Padding(
            padding: EdgeInsets.all(10),
            child: new Text("friend $index"),
          )
        ],
      ),
    );
  }

  _listImage() {
    return new Container(
      height: 250,
      width: 400,
      color: Colors.amber,
      child: new Image.asset(
        "assets/p1.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  _listBottom() {
    return Container(
      margin: EdgeInsets.all(7),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Icon(
                Icons.favorite_border,
                size: 30,
              ),
              new Padding(
                child: new Icon(
                  Icons.receipt,
                  size: 30,
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
              ),
              new Icon(
                Icons.near_me,
                size: 30,
              )
            ],
          ),
          new Icon(
            Icons.bookmark_border,
            size: 30,
          )
        ],
      ),
    );
  }

  _listBottomData() {
    return new Container(
      margin: EdgeInsets.only(left: 10,top: 5),
      child: new Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.centerLeft,
            child: new Text("789 Likse"),

          ),
          new Container(
            margin: EdgeInsets.only(top: 5),
            alignment: Alignment.centerLeft,
            child: new Text("July 15",style: new TextStyle(color: Colors.grey,fontSize: 12),),
          )
        ],
      ),
    );
  }
}
