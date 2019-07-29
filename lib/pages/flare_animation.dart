import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlareAnimation extends StatefulWidget {
  @override
  _FlareAnimationState createState() => _FlareAnimationState();
}

class _FlareAnimationState extends State<FlareAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlareAnimation"),
      ),
      body: FlareActor("animations/boring_star.flr",
          alignment: Alignment.center,
          fit: BoxFit.contain,
          animation: "rotate_scale_color"),
    );
  }
}
