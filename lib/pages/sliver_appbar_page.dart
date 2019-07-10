import 'package:flutter/material.dart';

import 'games_page.dart';

class SliverAppBarPage extends StatefulWidget {
  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage>
    with TickerProviderStateMixin {
  List<String> choices = ['Games', 'Players', 'Teams', 'Rosters'];

  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: _sliverBuilder,
      body: TabBarView(
        controller: _controller,
        children: choices.map((choice) {
          return GamesPage();
        }).toList(),
      ),
    ));
  }

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        centerTitle: true,
        //标题居中
        expandedHeight: 200.0,
        //展开高度200
        floating: false,
        //不随着滑动隐藏标题
        pinned: true,
        //固定在顶部
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text('NBA'),
          background: Image.network(
            "https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/t01de57f24efa2906b4.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      SliverPersistentHeader(
          pinned: true,
          delegate: _SliverAppBarDelegate(TabBar(
            labelColor: Colors.deepPurpleAccent,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontSize: 14),
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3.0,
            indicatorColor: Colors.deepPurpleAccent,
            indicatorPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            tabs: [
              Tab(text: choices[0]),
              Tab(text: choices[1]),
              Tab(text: choices[2]),
              Tab(text: choices[3]),
            ],
            controller: _controller,
          )))
    ];
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
