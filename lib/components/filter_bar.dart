import 'package:flutter/material.dart';

class FilterBar extends StatefulWidget {
  @override
  _FilterBarState createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0XFFEEEEEE), width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[Text('综合'), Icon(Icons.arrow_drop_down)],
            ),
          ),
          Text('销量'),
          Text('店铺'),
          Text('筛选'),
        ],
      ),
    );
  }
}
