import 'package:flutter/material.dart';

class GameListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.yellow, Colors.amber])),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
//              color: Colors.red,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        'https://bigshot.oss-cn-shanghai.aliyuncs.com/nba/bos.png',
                        width: 80,
                        height: 80,
                      ),
                      Text('Boston Celtics')
                    ],
                  ),
                  Text(
                    '120',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )
                ],
              ),
            ),
            flex: 1,
          ),
          Container(
            height: 80,
            width: 1,
            color: Colors.white,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '123',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        'https://bigshot.oss-cn-shanghai.aliyuncs.com/nba/dal.png',
                        width: 80,
                        height: 80,
                      ),
                      Text('Boston Celtics')
                    ],
                  )
                ],
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
