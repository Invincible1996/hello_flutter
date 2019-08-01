import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'config/route_handlers.dart';

class Routes {
  static String root = "/";
  static String containerPage = "/container";
  static String animationPage = "/animationPage";
  static String listViewPage = "/listViewPage";
  static String gridViewPage = "/gridViewPage";
  static String tabViewPage = "/tabViewPage";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return null;
    });
    router.define(root, handler: rootHandler);
    router.define(containerPage,
        handler: rootHandler, transitionType: TransitionType.inFromLeft);
    router.define(animationPage,
        handler: rootHandler, transitionType: TransitionType.material);
    router.define(listViewPage,
        handler: rootHandler, transitionType: TransitionType.material);
    router.define(gridViewPage,
        handler: rootHandler, transitionType: TransitionType.material);
    router.define(tabViewPage,
        handler: rootHandler, transitionType: TransitionType.material);
  }
}
