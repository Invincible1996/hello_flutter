import 'package:flutter/material.dart';
import 'package:hello_flutter/model/theme_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeInfo>(
      builder: (context, info, widget) => Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                '${info.count}',
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          color: Colors.red,
          child: Text(
            '${info.count}',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
