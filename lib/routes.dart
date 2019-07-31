import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'config/route_handlers.dart';

class Routes {
  static String root = "/";
  static String containerPage = "/container";
//  static String demoFunc = "/demo/func";
//  static String deepLink = "/message";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return null;
    });
    router.define(root, handler: rootHandler);
    router.define(containerPage, handler: rootHandler);
  }
}
