import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/model/theme_model.dart';
import 'package:hello_flutter/routes.dart';
import 'package:provider/provider.dart';
import 'config/application.dart';
import 'home_page.dart';

void main() => runApp(ChangeNotifierProvider(
      builder: (context) => ThemeInfo(),
      child: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    var themeInfo = Provider.of<ThemeInfo>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: themeInfo.themeData,
      home: HomePage(),
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    var themeInfo = Provider.of<ThemeInfo>(context);
//    return MaterialApp(
//      title: 'Flutter Demo',
//      debugShowCheckedModeBanner: false,
//      theme: themeInfo.themeData,
//      home: HomePage(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Consumer<ThemeInfo>(
//      builder: (context, themeInfo, _) => MaterialApp(
//            title: 'Flutter Demo',
//            debugShowCheckedModeBanner: false,
//            theme: ThemeData(
////                fontFamily: 'Raleway',
//                primaryColor: CommonStyle.themeColor),
//            home: HomePage(),
//          ),
//    );
//  }
//}
