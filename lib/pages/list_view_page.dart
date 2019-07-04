import 'package:flutter/material.dart';
import 'package:hello_flutter/styles/common_style.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Container(
        color: CommonStyle.pageBackgroundColor,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Container(
                height: 120,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10.0, left: 10, right: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.grey)],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  'ListView$index',
                  style: TextStyle(fontSize: 18),
                ),
              ),
        ),
      ),
    );
  }
}
