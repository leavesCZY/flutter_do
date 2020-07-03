/**
 * 作者：leavesC
 * 时间：2019/10/23 11:42
 * 描述：
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter_do/common/page.dart';

class ScaleAnimationPage extends BaseDemoPage {
  ScaleAnimationPage() : super("ScaleAnimation", includeScrollView: true);

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _ScaleAnimationWidget(
          duration: Duration(seconds: 3),
          beginScale: 0,
          endScale: 200,
        ),
        _ScaleAnimationWidget(
          duration: Duration(seconds: 8),
          beginScale: 0,
          endScale: 200,
        ),
        _ScaleAnimationWidget(
          duration: Duration(seconds: 8),
          beginScale: 0,
          endScale: 300,
        )
      ],
    );
  }
}

class _ScaleAnimationWidget extends StatefulWidget {
  final Duration duration;

  final double beginScale;

  final double endScale;

  _ScaleAnimationWidget(
      {@required this.duration, this.beginScale = 0, @required this.endScale});

  @override
  _ScaleAnimationWidgetState createState() => _ScaleAnimationWidgetState(
      duration: duration, beginScale: beginScale, endScale: endScale);
}

class _ScaleAnimationWidgetState extends State<_ScaleAnimationWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;

  AnimationController controller;

  final Duration duration;

  final double beginScale;

  final double endScale;

  _ScaleAnimationWidgetState(
      {@required this.duration, this.beginScale, @required this.endScale});

  initState() {
    super.initState();
//    controller = AnimationController(
//        duration: duration ?? const Duration(seconds: 3), vsync: this);
//    animation = Tween(begin: beginScale ?? 0, end: endScale).animate(controller)
//      ..addListener(() {
//        print("animation.value： ${animation.value}");
//        setState(() => {});
//      });
//    controller.forward();

    controller = new AnimationController(
        duration: duration ?? const Duration(seconds: 3), vsync: this);
    CurvedAnimation curvedAnimation =
        CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    animation =
        Tween(begin: beginScale ?? 0, end: endScale).animate(curvedAnimation)
          ..addListener(() {
            setState(() {});
          });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/avatar.jpg",
        width: animation.value, height: animation.value);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
