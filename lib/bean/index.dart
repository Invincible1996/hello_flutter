import 'package:flutter/material.dart';
import 'package:hello_flutter/util/HttpUtils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'index.g.dart';

class IndexRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('中国交建', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromRGBO(51, 51, 51, 1)),
      ),
      body: _IndexBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(60, 87, 114, 1),
        onPressed: () {},
        child: Icon(
            IconData(0xe660, fontFamily: 'MyIcons', matchTextDirection: true),
            color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Color.fromRGBO(60, 87, 114, 1),
          shape: CircularNotchedRectangle(),

          /// 底部导航栏打一个圆形的洞
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                  height: 60,
                  child: Column(
                    children: <Widget>[
                      Icon(
                          IconData(0xe612,
                              fontFamily: 'MyIcons', matchTextDirection: true),
                          color: Colors.white),
                      Text('首页',
                          style: TextStyle(color: Colors.white, height: 1.2)),
                    ],
                  ),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                  height: 60,
                  child: Column(
                    children: <Widget>[
                      Icon(
                          IconData(0xe6d8,
                              fontFamily: 'MyIcons', matchTextDirection: true),
                          color: Colors.white),
                      Text('通讯录',
                          style: TextStyle(color: Colors.white, height: 1.2)),
                    ],
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(width: 55.0),
              FlatButton(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                  height: 60,
                  child: Column(
                    children: <Widget>[
                      Icon(
                          IconData(0xe645,
                              fontFamily: 'MyIcons', matchTextDirection: true),
                          color: Colors.white),
                      Text('查询',
                          style: TextStyle(color: Colors.white, height: 1.2)),
                    ],
                  ),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                  height: 60,
                  child: Column(
                    children: <Widget>[
                      Icon(
                          IconData(0xe855,
                              fontFamily: 'MyIcons', matchTextDirection: true),
                          color: Colors.white),
                      Text('个人',
                          style: TextStyle(color: Colors.white, height: 1.2)),
                    ],
                  ),
                ),
                onPressed: () {},
              ),
            ],
          )),
    );
  }
}

// 序列化json 天气接口
@JsonSerializable()
class Weather {
  String city;
  String cityid;
  String temp;
  String WD;
  String WS;
  String SD;
  String AP;
  String njd;
  String WSE;
  String time;
  String sm;
  String isRadar;
  String Radar;

  Weather(this.city, this.cityid, this.temp, this.WD, this.WS, this.SD, this.AP,
      this.njd, this.WSE, this.time, this.sm, this.isRadar, this.Radar);

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

//  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

class _IndexBody extends StatefulWidget {
  @override
  _IndexBodyState createState() => new _IndexBodyState();
}

class _IndexBodyState extends State<_IndexBody> {
  GlobalKey _wrapKey = new GlobalKey();
  dynamic weatherInfo = <String, dynamic>{'city': '上海 123'};

  static _getWeather() async {
    print('执行了---');
    var result = await HttpUtils.request(
        'http://www.weather.com.cn/data/sk/101020100.html',
        method: HttpUtils.GET);
    print('weather---reulst--' + result.toString());

    return Weather.fromJson(result);
  }

  @override
  void initState() {
    super.initState();
    var response = _getWeather();
    print('response---' + response);
//    setState(() {
//      weatherInfo = response.weatherinfo;
//    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
            child: SizedBox(
          height: 760.0,
          child: Stack(
            fit: StackFit.loose,
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: 220.0,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("images/bg_a.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 52.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Image.asset('images/logo.png', width: 88.0),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(weatherInfo['city'],
                              style: TextStyle(color: Colors.white)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                child: Text('17℃',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30.0)),
                              ),
                              Text(
                                '多云',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.near_me, color: Colors.white),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Text('2级',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Icon(Icons.opacity, color: Colors.white),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Text('17%',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Icon(Icons.slow_motion_video,
                                  color: Colors.white),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Text('1020hpa',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Text('长江口风力：7级',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Text('江面浪高：0.5米',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Image.asset('images/hot.png', width: 44.0)
                  ],
                ),
              ),
              Positioned(
                  top: 180.0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      padding: EdgeInsets.all(0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              offset: Offset(0.0, 2.0),
                              blurRadius: 5.0)
                        ],
                      ),
                      child: new GestureNineSquare(),
                    ),
                  )),
            ],
          ),
        )));
  }
}

class GestureNineSquare extends StatefulWidget {
  @override
  _GestureNineSquareState createState() => new _GestureNineSquareState();
}

class _GestureNineSquareState extends State<GestureNineSquare> {
  @override
  Widget build(BuildContext context) {
    bool _focusState = false;
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'situation_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
//                    color: Colors.red,
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/situation.png', width: 66.0),
                      Text('项目概况',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'safely_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/safely.png', width: 66.0),
                      Text('项目安全',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'study_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/study.png', width: 66.0),
                      Text('党建学习',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'study_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/publicity.png', width: 66.0),
                      Text('宣传文件',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'technology_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/technology.png', width: 66.0),
                      Text('施工工艺',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'plan_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/plan.png', width: 66.0),
                      Text('施工进度',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'qr_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/code.png', width: 66.0),
                      Text('二维码系统',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'qr_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/blueprint.png', width: 66.0),
                      Text('项目图纸',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'patrol_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/patrol.png', width: 66.0),
                      Text('现场查询',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/multimedia.png', width: 66.0),
                      Text('多媒体资料',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/question.png', width: 66.0),
                      Text('问题与反馈',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'question_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/material.png', width: 66.0),
                      Text('物料管理',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'patrol_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/contract.png', width: 66.0),
                      Text('巡查系统',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/personal.png', width: 66.0),
                      Text('施工现场',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'question_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          width: 1.0, color: Color.fromRGBO(235, 235, 235, 1)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/equipment.png', width: 66.0),
                      Text('问题与反馈',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'question_page');
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/storage.png', width: 66.0),
                      Text('仓储管理',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 16.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
