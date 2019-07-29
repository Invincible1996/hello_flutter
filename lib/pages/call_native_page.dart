import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CallNativePage extends StatelessWidget {
  const CallNativePage({Key key}) : super(key: key);

  static const platform = const MethodChannel("com.flyou.test/android");

  showToast(String msg) async {
    try {
      await platform.invokeMethod("showToast", {"msg": msg});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  Future<String> getAndroidTime() async {
    var str;
    try {
      str = await platform.invokeMethod("getAndroidTime");
    } on PlatformException catch (e) {
      print(e.toString());
    }
    return str;
  }

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
                onPressed: () {
                  getAndroidTime().then((str) {
                    Scaffold.of(context).showSnackBar(new SnackBar(
                        content: Text(str != null ? str : "获取失败")));
                  });
                },
                child: Text('getTimeFromAndroid'),
              ),
              RaisedButton(
                color: Colors.red,
                onPressed: () {
                  showToast('Flutter call native');
                },
                child: Text('showAlert'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
