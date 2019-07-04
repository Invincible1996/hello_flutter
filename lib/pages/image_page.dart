import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('NetWork Image GIF'),
            ),
            Image.network(
                'https://bigshot.oss-cn-shanghai.aliyuncs.com/nab/lilade.gif'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('NetWork Image'),
            ),
            Image.network(
                'https://bigshot.oss-cn-shanghai.aliyuncs.com/0912-zeplinsketchplugin_dribbble_4x.png'),
          ],
        ),
      ),
    );
  }
}
