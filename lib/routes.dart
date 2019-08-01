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
  static String imageViewPage = "/imageViewPage";
  static String sliverAppBar = "/sliverAppBar";
  static String callNative = "/callNative";
  static String loginPage = "/loginPage";
  static String position = "/position";
  static String provider = "/provider";
  static String flare = "/flare";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return null;
    });
    router.define(root, handler: rootHandler);
    router.define(containerPage,
        handler: containerRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(animationPage,
        handler: animationRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(listViewPage,
        handler: listViewRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(gridViewPage,
        handler: gridViewRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(tabViewPage,
        handler: tabViewRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(imageViewPage,
        handler: imageViewRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(sliverAppBar,
        handler: sliverAppBarRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(callNative,
        handler: callNativeRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(loginPage,
        handler: loginPageRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(position,
        handler: positionRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(provider,
        handler: providerRouteHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(flare,
        handler: flareRouteHandler,
        transitionType: TransitionType.inFromBottom);
  }
}
