import 'package:flutter/material.dart';
import 'package:hello_flutter/bean/StudyList.dart';
import 'package:hello_flutter/styles/common_style.dart';
import 'package:hello_flutter/util/HttpUtils.dart';


class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  final List<String> imgList = [
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/12.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/13.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/1816.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/40.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/43.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/9.jpg',
  ];

  @override
  void initState() {
    super.initState();
    getListData();
  }
  
  getListData() async {
    var result = await HttpUtils.request('http://ccsys.etqsoft.com/api/index.php?action=getstudyinfo&time=1');
    var studyList= StudyListResponse.fromJson(result);
    print(studyList.data[0].list[0].addtime);
    print(studyList.data[0].title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Container(
        color: CommonStyle.pageBackgroundColor,
        child: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) => Container(
            height: 120,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10.0, left: 10, right: 10.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imgList[index]), fit: BoxFit.cover),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey)],
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              'ListView$index',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

