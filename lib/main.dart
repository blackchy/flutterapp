import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSelection = new Container(
      padding: const EdgeInsets.all(31.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Q弟侦探因幡-荻野梓',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Text(
                '配音 : MAKO/日高里菜',
                style: new TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          )),
          new FavoriteWidget(),
        ],
      ),
    );
    Column buildButtonColumn(IconData icon, String label, int index) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.more, '更多', 0),
          buildButtonColumn(Icons.details, '详情', 1),
          buildButtonColumn(Icons.share, '分享', 2),
        ],
      ),
    );
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
      种族：灵长类人类科铁人纯血种
      年龄：20个月
      出生地：日本
      生日：4月21日（金牛座）
      身高：95cm
      血型：B型
      发色：暖棕色
      职业：最强幼儿
      喜欢的东西：堆积木，玩泥巴
      讨厌的东西：唠叨
      爱好：狩猎
      荻野警部的女儿。外表软萌可爱实则是本作战斗力第一爆表的人物（遗传自父亲）。工作能力比爸爸要出色，简单的就抓到了山羊和洛伦索。和洋玩过家家的时候展现了纯熟的吻技。能像搭积木一样盖出完成度超高的小木屋。对洋很中意，情人节送了义理巧克力（然后爸爸哭诉都没有他的份）。和史黛拉姐姐相处的也很好。
        ''',
        softWrap: true,
      ),
    );
    return new MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false, //去掉右上角debug标签
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ), //修改主题
      home: new Scaffold(
        //设置一段距离，防止布局溢出到状态栏
        appBar: new PreferredSize(
            child: SafeArea(
              top: true,
              child: Offstage(),
            ),
            preferredSize: Size(double.infinity, 60)),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/lake.jpg',
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSelection,
            buttonSection,
            textSection,
            new TextButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TextButtonWidgetState();
  }
}

class TextButtonWidgetState extends State<TextButtonWidget> {
  void _onClick() {
//    showDialog(
//        context: context,
//        builder: (ctx) {
//          return Center(
//            child: Column(
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//                new Text("返回"),
//              ],
//            ),
//          );
//        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new IconButton(
          icon: new Icon(Icons.more, color: Colors.blue),
          onPressed: _onClick,
        ),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            "xxx",
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => new _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      // If the lake is currently favorited, unfavorite it.
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
        // Otherwise, favorite it.
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        new Container(
          padding: new EdgeInsets.all(0.0),
          child: new IconButton(
            icon: (_isFavorited
                ? new Icon(Icons.star)
                : new Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        new SizedBox(
          width: 18.0,
          child: new Container(
            child: new Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
