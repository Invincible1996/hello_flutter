import 'package:flutter/material.dart';
import 'package:hello_flutter/model/theme_model.dart';
import 'package:hello_flutter/styles/common_style.dart';
import 'components/list_item.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final List<String> list = [
    'Container',
    'Animation',
    'ListView',
    'GridView',
    'TabView',
    'Image',
    'SliverAppBar'
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeInfo>(
        builder: (context, themeInfo, _) => Scaffold(
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
                                color: CommonStyle.placeHolderColor,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: CommonStyle.pageBackgroundColor,
                        ),
                        onPressed: () {
                          themeInfo.changeTheme();
                          themeInfo.addCount();
                        },
                      ),
                    )
                  ],
                ),
              ),
              body: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: CommonStyle.pageBackgroundColor,
                      child: ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, int index) =>
                              ListItem(
                                item: list[index],
                                index: index,
                              )),
                    ),
                  ),
//                  Container(
//                    alignment: Alignment.center,
//                    child: Text(
//                      '${themeInfo.count}如果痴痴的等某日终于可等到一生中最爱',
//                      style:
//                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.amber),
//                    ),
//                    height: 100,
//                    width: MediaQuery.of(context).size.width,
//                    color: Colors.red,
//                  )
                ],
              ),
            ));
  }
}
