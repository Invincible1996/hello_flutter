import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/animation_page.dart';
import 'package:hello_flutter/pages/call_native_page.dart';
import 'package:hello_flutter/pages/container_page.dart';
import 'package:hello_flutter/pages/flare_animation.dart';
import 'package:hello_flutter/pages/grid_view_page.dart';
import 'package:hello_flutter/pages/image_page.dart';
import 'package:hello_flutter/pages/list_view_page.dart';
import 'package:hello_flutter/pages/login_page.dart';
import 'package:hello_flutter/pages/position_page.dart';
import 'package:hello_flutter/pages/provider_page.dart';
import 'package:hello_flutter/pages/sliver_appbar_page.dart';
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
var imageViewRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ImagePage();
});
var sliverAppBarRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SliverAppBarPage();
});
var callNativeRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return CallNativePage();
});
var loginPageRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoginPage();
});
var positionRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PositionPage();
});
var providerRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ProviderPage();
});
var flareRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return FlareAnimation();
});
