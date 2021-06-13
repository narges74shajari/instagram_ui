import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginScreenState();
  }

}

class LoginScreenState extends State {
  final TextEditingController _UserId=new TextEditingController();
  final TextEditingController _Password=new TextEditingController();

  var _textStyleBlack=new TextStyle(fontSize: 12,color: Colors.black);
  var _textStyleGrey=new TextStyle(fontSize: 12,color: Colors.grey);
  var _textStyleblueGrey=new TextStyle(fontSize: 12,color: Colors.blueGrey);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.only(top: 25,bottom: 15),
            child: new Text('Tnstagram',
              style: new TextStyle(
                  fontFamily: 'FontsFree-Net-Billabong',
                  fontSize: 50
              ),),
          ),


          _UserIDeditContainer(),
          _PasswordEditContainer(),
          _LoginContainer(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Forget your login datails',style: _textStyleGrey,),
              new FlatButton(onPressed: (){}, child: new Text('Get help  siging in',style: _textStyleblueGrey,))
            ],

          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                color: Colors.grey,
                height: 1,
                width: MediaQuery.of(context).size.width/2.7,
              ),
              new Text('OR',style: new TextStyle(color: Colors.blueGrey),),
              new Container(
                color: Colors.grey,
                height: 1,
                width: MediaQuery.of(context).size.width/2.7,
              ),
            ],
          ),
          _facebookContainer()
        



        ],),
    );
  }

Widget  _UserIDeditContainer() {
    return new Container(
      child: new TextField(
        controller: _UserId,
        decoration: new InputDecoration(
          hintText: 'Phone number ,email or username',
          border:  new OutlineInputBorder(
            borderSide: new BorderSide(
              color: Colors.black
            )
          ),
          isDense: true
        ),
        style: _textStyleBlack,

      ),


    );
  }

  Widget  _PasswordEditContainer() {
    return new Container(
      margin: EdgeInsets.only(top: 5),
      child: new TextField(
        controller: _Password,
        decoration: new InputDecoration(
            hintText: 'Password',
            border:  new OutlineInputBorder(
                borderSide: new BorderSide(
                    color: Colors.black
                )
            ),
            isDense: true
        ),
        style: _textStyleBlack,
      ),


    );
  }

  Widget  _LoginContainer() {
    return new GestureDetector(
      onTap: _login,
        //print('UserId:${_UserId.text.isEmpty}');

      child: new Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        color: Colors.blue,
        width: 500,
        height: 40,
        child: new Text('Log in ',style: new TextStyle(color: Colors.white)),
      ),
    );
  }

  _facebookContainer() {
    return new GestureDetector(
      onTap: (){

      },
      child: new Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        color: Colors.blue,
        width: 500,
        height: 40,
        child: new Text('Log in with facebook',style: new TextStyle(color: Colors.white)),
      ),
    );
  }

  void _login() {
    if(_UserId.text.isEmpty){
      _showEmptyDialog("type somting User Name");
    }
    else if(_Password.text.isEmpty){
      _showEmptyDialog("type somting Password");
    }
    else{
      Navigator.of(context).pushNamed('/HomeScreen/');
    }

  }

  void _showEmptyDialog(String s) {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return new CupertinoAlertDialog(
            content: new Text('${s} Cant be empty'),
            actions: <Widget>[
              FlatButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: new Text("ok"),
              )
            ],
          );
        });
  }

}