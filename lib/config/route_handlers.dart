import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/container_page.dart';

import '../home_page.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});

var containerRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ContainerPage();
});
