import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accountBottomIconScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          _appBar(),
          _profile(),
          _centerButtom(),
          _displayImage()
        ],
      ),
    );
  }

  _appBar() {
    return Container(
      padding: EdgeInsets.only(top: 25),
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: new Text(
                    "UserName",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              new Row(
                children: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.update),
                    onPressed: () {},
                    iconSize: 25,
                  ),
                  new IconButton(
                    icon: Icon(Icons.person_add),
                    onPressed: () {},
                    iconSize: 25,
                  ),
                  new IconButton(
                    icon: Icon(Icons.format_list_bulleted),
                    onPressed: () {},
                    iconSize: 25,
                  ),
                ],
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.only(top: 2),
            height: 1.2,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }

  _profile() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ClipOval(
                        child: new Image.asset(
                      "assets/you.jpg",
                      height: 100,
                      fit: BoxFit.cover,
                    )),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: new Text(
                        "DisplayName",
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              new Container(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      child: new Row(
                        children: <Widget>[_post(), _followers(), _following()],
                      ),
                    ),
                    new GestureDetector(
                      child: new Container(
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        margin: EdgeInsets.only(left: 8),
                        height: 30,
                        width: 195,
                        child: new Text("Edit Profile"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          new Container(
            height: 0.5,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }

  _post() {
    return Container(
      child: new GestureDetector(
        child: new Column(
          children: <Widget>[
            new Text(
              "75",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            new Container(
              child: new Text(
                "post",
                style: new TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  _followers() {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: new GestureDetector(
        child: new Column(
          children: <Widget>[
            new Text(
              "725",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            new Container(
              child: new Text(
                "followers",
                style: new TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  _following() {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: new GestureDetector(
        child: new Column(
          children: <Widget>[
            new Text(
              "543",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            new Container(
              child: new Text(
                "following",
                style: new TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  _centerButtom() {
    return Container(
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(icon: Icon(Icons.grid_on), onPressed: () {}),
              new IconButton(icon: Icon(Icons.crop_original), onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.perm_contact_calendar), onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.bookmark_border), onPressed: () {}),
            ],
          ),
          new Container(
            height: 0.5,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }

  _displayImage() {
    return new Expanded(
        child: new Container(
      child: GridView.builder(
          itemCount: 17,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.grey[200],
              margin: EdgeInsets.all(2),
              child: Image.asset("assets/pic${index}.jpg"),
            );
          }),
    ));
  }
}
