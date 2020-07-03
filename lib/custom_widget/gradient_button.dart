/**
 * 作者：leavesC
 * 时间：2019/10/20 20:30
 * 描述：
 * GitHub：https://github.com/leavesC
 * Blog：https://www.jianshu.com/u/9df45b87cfdf
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class GradientButton extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final List<Color> colors;
  final Color splashColor;
  final BorderRadius borderRadius;
  final GestureTapCallback onPressed;

  GradientButton({
    this.width,
    this.height,
    this.colors,
    this.splashColor,
    this.borderRadius,
    this.onPressed,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<Color> _colors = colors ??
        [theme.primaryColor, theme.primaryColorDark ?? theme.primaryColor];
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: _colors),
        borderRadius: borderRadius,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: splashColor ?? _colors.last,
          highlightColor: Colors.transparent,
          borderRadius: borderRadius,
          onTap: onPressed,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: height, width: width),
            child: Center(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class GradientButtonPage extends BaseDemoPage {
  GradientButtonPage() : super("GradientButton");

  @override
  Widget generateChildren(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          GradientButton(
            width: 90,
            height: 40,
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: onTap,
          ),
          SizedBox(
            height: 80,
          ),
          GradientButton(
            width: 90,
            height: 40,
            colors: [
              Colors.red[200],
              Colors.red[600],
              Colors.red[900],
            ],
            splashColor: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: onTap,
          ),
          SizedBox(
            height: 80,
          ),
          GradientButton(
            width: 90,
            height: 40,
            colors: [
              Colors.red[300],
              Colors.teal[300],
              Colors.deepPurpleAccent[400],
              Colors.amberAccent[400],
            ],
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: onTap,
          ),
          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }

  onTap() {
    print("button click");
  }
}
