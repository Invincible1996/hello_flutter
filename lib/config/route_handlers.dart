import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/animation_page.dart';
import 'package:hello_flutter/pages/container_page.dart';
import 'package:hello_flutter/pages/grid_view_page.dart';
import 'package:hello_flutter/pages/list_view_page.dart';
import 'package:hello_flutter/pages/tab_view_page.dart';

import '../home_page.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});

var containerRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ContainerPage();
});
var animationRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return AnimationPage();
});
var listViewRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ListViewPage();
});
var gridViewRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return GridViewPage();
});
var tabViewRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return TabViewPage();
});
