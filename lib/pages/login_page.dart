import 'package:flutter/material.dart';
import 'package:hello_flutter/components/common_button.dart';
import 'package:hello_flutter/styles/common_style.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Container(
//        padding: EdgeInsets.only(bottom: 80),
        alignment: Alignment.topCenter,
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Image.network(
              'https://bigshot.oss-cn-shanghai.aliyuncs.com/nba/bos.png',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 50,
            ),
            CommonButton(
              radius: 6.0,
              //控件的圆角,也是水波纹圆角,如果半径为0表示矩形。
              width: MediaQuery.of(context).size.width * .95,
              height: 45.0,
              btnColor: CommonStyle.themeColor,
              //下面这两个颜色可选
              rippleColor: Colors.black12,
              touchColor: Colors.transparent,
              tapCallback: () {},
              child: new Text(
                '登录',
                textAlign: TextAlign.center,
                style: new TextStyle(
                    color: const Color(0xFFFFFFFF), fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CommonButton(
              radius: 6.0,
              //控件的圆角,也是水波纹圆角,如果半径为0表示矩形。
              width: MediaQuery.of(context).size.width * .95,
              height: 45.0,
              btnColor: Colors.orange,
              //下面这两个颜色可选
              rippleColor: Colors.black12,
              touchColor: Colors.transparent,
              tapCallback: () {},
              child: new Text(
                '注册',
                textAlign: TextAlign.center,
                style: new TextStyle(
                    color: const Color(0xFFFFFFFF), fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
