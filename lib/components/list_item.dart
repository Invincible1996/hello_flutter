/*
 * @Description: flutter
 * @Author:kevin
 * @since: 2019-06-23 22:26:43
 * @lastTime: 2019-07-05 10:53:51
 * @LastAuthor: Tracy
 */

import 'package:flutter/material.dart';
import 'package:hello_flutter/config/application.dart';
import 'package:hello_flutter/styles/common_style.dart';

class ListItem extends StatelessWidget {
  final String item;
  final int index;

  ListItem({Key key, this.item, this.index}) : super(key: key);

  void _onItemPress(int index, BuildContext context) {
    switch (index) {
      case 0:
        var result = "NBA";
        Application.router.navigateTo(context, "/container?message=$result");
        break;
      case 1:
        Application.router.navigateTo(context, "/animationPage?");
        break;
      case 2:
        Application.router.navigateTo(context, "/listViewPage?");
        break;
      case 3:
        Application.router.navigateTo(context, "/gridViewPage?");
        break;
      case 4:
        Application.router.navigateTo(context, "/tabViewPage?");
        break;
      case 5:
        Application.router.navigateTo(context, "/imageViewPage?");
        break;
      case 6:
        Application.router.navigateTo(context, "/sliverAppBar?");
        break;
      case 7:
        Application.router.navigateTo(context, "/callNative?");
        break;
      case 8:
        Application.router.navigateTo(context, "/loginPage?");
        break;
      case 9:
        Application.router.navigateTo(context, "/position?");
        break;
      case 10:
        Application.router.navigateTo(context, "/provider?");
        break;
      case 11:
        Application.router.navigateTo(context, "/flare?");
        break;
      case 12:
        Application.router.navigateTo(context, "/tmallGoodsList?");
        break;
      case 13:
        Application.router.navigateTo(context, "/bottomNavigationBar?");
        break;
      default:
        Application.router.navigateTo(context, "/bottomNavigationBar?");
        break;
    }
  }

  void navigateToPage(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => widget));
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
