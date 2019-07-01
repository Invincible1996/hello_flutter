import 'package:flutter/material.dart';
import 'package:hello_flutter/styles/common_style.dart';

import 'components/list_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: 36,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        size: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Search for shared resources',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'DMSans-BoldItalic',
                              color: CommonStyle.mentionTextColor),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: CommonStyle.pageBackgroundColor,
                      borderRadius: BorderRadius.circular(18.0)),
                )),
            IconButton(
              icon: Icon(
                Icons.account_box,
                color: CommonStyle.titleTextColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                color: CommonStyle.titleTextColor,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: Container(
        color: CommonStyle.pageBackgroundColor,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => ListItem()),
      ),
    );
  }
}
