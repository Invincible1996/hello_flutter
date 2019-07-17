import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final List<String> imgList = [
    'https://img.alicdn.com/imgextra/i2/2145088292/O1CN010Wg7s12B7mfLDQ9of_!!0-item_pic.jpg_430x430q90.jpg',
    'https://img.alicdn.com/imgextra/i3/2145088292/TB2SrE8tpkoBKNjSZFkXXb4tFXa_!!2145088292.jpg_430x430q90.jpg',
    'https://img.alicdn.com/imgextra/i2/2145088292/O1CN01SO3d4d2B7meym0tHi_!!0-item_pic.jpg_430x430q90.jpg',
    'https://img.alicdn.com/imgextra/i2/2145088292/O1CN010Wg7s12B7mfLDQ9of_!!0-item_pic.jpg_430x430q90.jpg',
    'https://img.alicdn.com/imgextra/i2/2145088292/O1CN010Wg7s12B7mfLDQ9of_!!0-item_pic.jpg_430x430q90.jpg'
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
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          itemCount: imgList.length,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imgList[index]), fit: BoxFit.cover),
//                    color: Colors.red,
                gradient: LinearGradient(
                    colors: [Colors.greenAccent, Colors.yellow],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight),
                borderRadius: BorderRadius.circular(5.0)),
            child: Text(
              'SPECIALIZED ROUBAIX COMP',
              style: TextStyle(color: Colors.black, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
