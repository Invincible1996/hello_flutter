import 'package:flutter/material.dart';
import 'package:hello_flutter/model/theme_model.dart';
import 'package:hello_flutter/styles/common_style.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() => runApp(ChangeNotifierProvider(
      builder: (context) => ThemeInfo(),
      child: MyApp(),
    ));

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var themeInfo = Provider.of<ThemeInfo>(context);
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: themeInfo.themeData,
//       home: HomePage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeInfo>(
      builder: (context, themeInfo, _) => MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
//                fontFamily: 'Raleway',
                primaryColor: CommonStyle.themeColor),
            home: HomePage(),
          ),
    );
  }
}
