import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.red, width: 1)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Container with border and border raduis',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.lightBlueAccent,
                        Colors.yellow,
                        Colors.lightBlueAccent,
                        Colors.indigoAccent,
                        Colors.red
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Container with gradient',
                          style: TextStyle(fontSize: 22),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(Icons.av_timer, size: 30, color: Colors.white),
                            Icon(
                              Icons.access_alarm,
                              size: 30,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.save,
                              size: 30,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.event,
                              size: 30,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.all(10.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(color: Color(0XFFEEEEEE), blurRadius: 10.0)
                    ],
                  ),
                  child: Center(
                    child: Text('Container with shadow'),
                  ),
                ),
                Container(
                  // height: 140,
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.all(10.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(color: Color(0XFFEEEEEE), blurRadius: 10.0)
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '归去来兮，田园将芜胡不归31？既自以心为形役32，奚惆怅而独悲33？悟已往之不谏34，知来者之可追35。实迷途其未远36，觉今是而昨非37。舟遥遥以轻飏38，风飘飘而吹衣。问征夫以前路39，恨晨光之熹微40。',
                      style: TextStyle(fontFamily: 'Raleway',fontSize: 30),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.all(10.5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(color: Color(0XFFEEEEEE), blurRadius: 10.0)
                    ],
                  ),
                  child: Text(
                    '豫章故郡，洪都新府2。星分翼轸，地接衡庐3。襟三江而带五湖4，控蛮荆而引瓯越5。物华天宝，龙光射牛斗之墟6；人杰地灵，徐孺下陈蕃之榻7。雄州雾列8，俊采星驰9。台隍枕夷夏之交10，宾主尽东南之美11。都督阎公之雅望，棨戟遥临；宇文新州之懿范，襜帷暂驻12。十旬休假13，胜友如云；千里逢迎14，高朋满座。腾蛟起凤，孟学士之词宗15；紫电青霜，王将军之武库16。家君作宰，路出名区；童子何知，躬逢胜饯17。',
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
