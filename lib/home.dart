import 'package:flutter/material.dart';
import 'image_helper.dart';

void main() => runApp(new HomeMyApp());

class HomeMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false, //去掉右上角debug标签
      theme: new ThemeData(
        primaryColor: Colors.white,
      ), //修改主题
      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Center(
//            child: new Text('Fultter Test'),
//          ),
//        ),
        body: new Center(
          child: ImageHelper.iconJpg("lake"),
        ),
      ),
    );
  }
}
