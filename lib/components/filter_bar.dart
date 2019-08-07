import 'package:flutter/material.dart';

class FilterBar extends StatefulWidget {
  final double scrollOffset;

  const FilterBar({Key key, this.scrollOffset}) : super(key: key);

  @override
  _FilterBarState createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -widget.scrollOffset),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.red,
                border: Border(
                    bottom: BorderSide(color: Color(0XFFEEEEEE), width: 1))),
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
          )
        ],
      ),
    );
  }
}
