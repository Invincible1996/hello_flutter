import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
//              width: 300,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.red, width: 1)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Container with border and border raduis',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Container(
//              width: 300,
              height: 150,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.lightBlueAccent,
                    Colors.yellow,
                    Colors.indigoAccent
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Container with gradient',
                      style: TextStyle(fontSize: 22),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(Icons.av_timer, size: 30, color: Colors.white),
                        Icon(
                          Icons.access_alarm,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.save,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.event,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
