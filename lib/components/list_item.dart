/*
 * @Description: flutter
 * @Author:kevin
 * @since: 2019-06-23 22:26:43
 * @lastTime: 2019-07-04 17:16:00
 * @LastAuthor: Tracy
 */

import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/container_page.dart';
import 'package:hello_flutter/pages/grid_view_page.dart';
import 'package:hello_flutter/pages/image_page.dart';
import 'package:hello_flutter/pages/list_view_page.dart';
import 'package:hello_flutter/pages/tab_view_page.dart';
import 'package:hello_flutter/styles/common_style.dart';

class ListItem extends StatelessWidget {
  final String item;
  final int index;

  ListItem({Key key, this.item, this.index}) : super(key: key);

  void _onItemPress(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ContainerPage()));
        break;
      case 1:
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ListViewPage()));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => GridViewPage()));
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => TabViewPage()));
        break;
      case 5:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ImagePage()));
        break;
      case 5:
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _onItemPress(index, context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(color: CommonStyle.dividerColor, width: 0.5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              item,
              style: TextStyle(
                  color: CommonStyle.titleTextColor,
                  fontFamily: 'Raleway',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: CommonStyle.titleTextColor,
            )
          ],
        ),
      ),
    );
  }
}
