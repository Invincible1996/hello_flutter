import 'package:flutter/material.dart';
import 'package:hello_flutter/bean/index.dart';
import 'package:hello_flutter/bean/reponse_bean.dart';
import 'package:hello_flutter/components/filter_bar.dart';
import 'package:hello_flutter/util/HttpUtils.dart';

class TmallGoodsList extends StatefulWidget {
  @override
  _TmallGoodsListState createState() => _TmallGoodsListState();
}

class _TmallGoodsListState extends State<TmallGoodsList> {
  double _scrollOffset = 0;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
//      print(_scrollController.offset);
    });
  }

  fetchData() async {
    var data = await HttpUtils.request(
        'http://www.weather.com.cn/data/sk/101020100.html');
    print(data['weatherinfo']['city']);

    var weather = ResponseBean.fromJson(data);
    print(weather.weatherinfo.city);
    print(weather.weatherinfo.cityid);
    print(weather.weatherinfo.AP);
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
        body: Stack(
          children: <Widget>[
            Container(
//          height: 200,
//          color: Colors.red,
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: 15,
                  itemBuilder: (context, index) => Container(
                        height: 120,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(9.0)),
                      )),
            ),
//            Expanded(
//                child: ListView.builder(
//                    controller: _scrollController,
//                    itemCount: 15,
//                    itemBuilder: (context, index) => Container(
//                          height: 120,
//                          margin: EdgeInsets.only(left: 20, right: 20, top: 15),
//                          decoration: BoxDecoration(
//                              color: Colors.green,
//                              borderRadius: BorderRadius.circular(9.0)),
//                        ))),
            Positioned(
                child: FilterBar(
              scrollOffset: _scrollOffset,
            ))
          ],
        ),
      ),
    );
  }
}
