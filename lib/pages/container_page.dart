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
                      '北方的村莊住著一個南方的姑娘她總是喜歡穿著帶花的裙子站在路旁她的話不多但笑起來是那麼平靜悠揚她柔弱的眼神裡裝的是什麼 是思念的憂傷南方的小鎮陰雨的冬天沒有北方冷她不需要臃腫的棉衣去遮蓋她似水的面容她在來去的街頭留下影子芳香才會某然的心痛眨眼的時間芳香已飄散影子已不見南方姑娘 你是否習慣北方的秋涼南方姑娘 你是否喜歡北方人的直爽日子過的就像那些不眠的晚上她嚼著口香糖對牆滿談著理想南方姑娘 我們都在忍受著漫長南方姑娘 是不是高樓遮住了你的希望昨日的雨曾淋漓過她瘦弱的肩膀夜空的北斗也沒有讓她找到迷途的方向陽光裡她在院子中央晾曬著衣裳在四季的風中她散著頭髮安慰著時光南方姑娘 你是否愛上了北方南方姑娘 你說今天你就要回到你的家鄉思念讓人心傷 她呼喚著你的淚光南方的果子已熟 那是你簡單的理想',
                      style: TextStyle(fontFamily: 'Raleway'),
                    ),
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
