import 'package:flutter/material.dart';

class likeBottomIconScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new likeBottomIconScreenState();
  }
}

class likeBottomIconScreenState extends State with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 2, vsync: this);
    var _appBar = new Container(
      padding: EdgeInsets.only(top: 30),
      child: new TabBar(tabs: [
        new Tab(
          child: new Text(
            "Fallowing",
            style: TextStyle(color: Colors.black),
          ),
        ),
        new Tab(
          child: new Text(
            "You",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],controller: _tabcontroller,
      indicatorColor: Colors.black,),
    );
    return Scaffold(
      appBar: new PreferredSize(child: _appBar, preferredSize: Size.square(50)),
      body: TabBarView(
        children: [
          new FallowingPage(),
          new YourPage()
        ],controller: _tabcontroller,
      ),
    );
  }
}

class FallowingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     body:_body() ,
   );
  }

  _body() {
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        itemCount: 20,
          itemBuilder: (BuildContext context, int index){
          return new Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Image.asset("assets/account.png",height: 50,),
                new Text("friend ${index+1} your pictur "),
                new Image.asset("assets/pic0.jpg",height: 50,)
              ],
            ),
          );
          }),
    );
  }


}

class YourPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:_body() ,
    );
  }

  _body() {
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index){
            return new Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Image.asset("assets/you.jpg",height: 50,),
                  new Text("you start following friend ${index} "),
                  new OutlineButton(
                      onPressed: (){
                        
                      },
                    child: new Text("following"),
                  )

                ],
              ),
            );
          }),
    );
  }

}