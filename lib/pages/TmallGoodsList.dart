import 'package:flutter/material.dart';
import 'package:hello_flutter/components/filter_bar.dart';

class TmallGoodsList extends StatefulWidget {
  @override
  _TmallGoodsListState createState() => _TmallGoodsListState();
}

class _TmallGoodsListState extends State<TmallGoodsList> {
//  double _height = 0;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 20) {
        setState(() {
//          _heightight = -10;
        });
      }
      print(_scrollController.offset);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          title: Container(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                Text(
                  '请输入商品名称',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
        body: Column(
          children: <Widget>[
            FilterBar(),
            Expanded(
                child: ListView.builder(
                    controller: _scrollController,
                    itemCount: 5,
                    itemBuilder: (context, index) => Container(
                          height: 120,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(9.0)),
                        )))
          ],
        ),
      ),
    );
  }
}
