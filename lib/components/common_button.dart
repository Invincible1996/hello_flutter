import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  //半径
  final double radius;

  //水波纹宽度
  final double width;

  //水波纹高度
  final double height;

  //按钮区域颜色
  final Color btnColor;

  //点击回调
  final GestureTapCallback tapCallback;

  //水波纹颜色
  final Color rippleColor;

  //点击|触摸时候显示的颜色
  final Color touchColor;

  //子view
  final Widget child;

  const CommonButton({
    Key key,
    this.radius: 0.0,
    this.width: double.infinity,
    this.height: double.infinity,
    this.btnColor: Colors.grey,
    this.tapCallback,
    //rippleColor如果没有手动设置颜色,那么我们则使用Theme.of(context).splashColor
    this.rippleColor: Colors.white,
    //touchColor如果没有手动设置颜色,那么我们则使用Theme.of(context).highlightColor
    this.touchColor: Colors.white,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Material(
      //控件背景区域圆角以及水波纹扩散填充的圆角
//      borderRadius: new BorderRadius.circular(this.radius),
      child: new Ink(
        decoration: new BoxDecoration(
            color: this.btnColor,
            borderRadius: BorderRadius.circular(this.radius),
//            border: Border.all(color: Colors.red, width: 0.5)
        ),
        child: new InkWell(
          borderRadius: BorderRadius.circular(this.radius),
          //点击|触摸的时候,高亮显示的颜色
          highlightColor: this.touchColor != Colors.white
              ? this.touchColor
              : Theme.of(context).highlightColor,
          //波纹扩散颜色
          splashColor: this.rippleColor != Colors.white
              ? this.rippleColor
              : Theme.of(context).splashColor,
          onTap: this.tapCallback,
          child: new Container(
            width: this.width,
            height: this.height,
            alignment: Alignment.center,
            child: this.child,
          ),
        ),
      ),
    );
  }
}