import 'package:flutter/material.dart';
import 'package:hello_flutter/styles/common_style.dart';

class TabViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TabView'),
        ),
        body: DefaultTabController(
          length: 5,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: CommonStyle.dividerColor, width: 0.5))),
                child: Material(
                  //解决无法修改背景色的问题
                  color: Colors.white,
                  child: TabBar(
                    indicatorColor: CommonStyle.themeColor,
                    unselectedLabelColor: Colors.black54,
                    labelColor: CommonStyle.themeColor,
                    tabs: [
                      Tab(
                        text: '全部',
                      ),
                      Tab(
                        text: '待付款',
                      ),
                      Tab(
                        text: '待发货',
                      ),
                      Tab(
                        text: '待收货',
                      ),
                      Tab(
                        text: '待评价',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Text('1'),
                    Text('2'),
                    Text('3'),
                    Text('4'),
                    Text('5')
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
