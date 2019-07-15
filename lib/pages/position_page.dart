import 'package:flutter/material.dart';

class PositionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PositionPage'),
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.red,
            ),
            Positioned(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9.0)),
              height: 200,
              width: MediaQuery.of(context).size.width * .92,
              child: Wrap(
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
