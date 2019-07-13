import 'package:flutter/material.dart';

class CallNativePage extends StatelessWidget {
  const CallNativePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Callnative'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text('showToast'),
              ),
              RaisedButton(
                color: Colors.red,
                onPressed: () {},
                child: Text('showAlert'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
