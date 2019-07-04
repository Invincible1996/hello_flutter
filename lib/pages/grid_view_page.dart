import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final List<String> imgList = [
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/12.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/13.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/1816.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/40.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/43.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/9.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/12.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/13.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/1816.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/40.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/43.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/9.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/12.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/13.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/1816.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/40.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/43.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/9.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/12.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/13.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/1816.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/40.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/43.jpg',
    'https://bigshot.oss-cn-shanghai.aliyuncs.com/wallpaper/9.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          itemCount: imgList.length,
          itemBuilder: (context, index) => Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imgList[index]), fit: BoxFit.cover),
                    color: Colors.red,
                    gradient: LinearGradient(
                        colors: [Colors.greenAccent, Colors.yellow],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(5.0)),
                child: Text(
                  'Kobe',
                  style: TextStyle(color: Colors.white12),
                ),
              ),
        ),
      ),
    );
  }
}
