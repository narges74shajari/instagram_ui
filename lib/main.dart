import 'package:flutter/material.dart';
import 'package:ftr_instagramui/InstaScreens/loginScreen.dart';

import 'InstaScreens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Flutter Instagram UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: <String,WidgetBuilder>{
        '/HomeScreen/':(BuildContext context){
          return new HomeScreen();
        }
      },
    );
  }
}
