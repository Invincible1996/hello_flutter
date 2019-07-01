import 'package:flutter/material.dart';
import 'package:hello_flutter/styles/common_style.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: CommonStyle.themeColor,
      ),
      home: HomePage(),
    );
  }
}
