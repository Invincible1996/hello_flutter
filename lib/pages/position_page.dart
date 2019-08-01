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
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.red,
            ),
            Positioned(
              top: 20,
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9.0)),
              height: 200,
              width: MediaQuery.of(context).size.width * .92,
              child: Wrap(
                children: <Widget>[
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
//                      border: Border.all(
//                        color: Colors.grey,
//                        width: 1
//                      )
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        )
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        )
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        )
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        )
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        )
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        )
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(9.0),
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        )
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(9.0),
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        )
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width * .92) / 3,
                    child: Text('AA'),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
