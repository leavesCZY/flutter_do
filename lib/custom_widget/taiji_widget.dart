/**
 * 作者：leavesC
 * 时间：2019/10/20 21:56
 * 描述：
 * GitHub：https://github.com/leavesC
 * Blog：https://www.jianshu.com/u/9df45b87cfdf
 */
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class TaijiWidgetPage extends BaseDemoPage {
  TaijiWidgetPage() : super("TaijiWidgetPage", includeScrollView: true);

  @override
  Widget generateChildren(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          TaijiWidget(300),
          TaijiWidget(250),
          TaijiWidget(200),
          TaijiWidget(150),
        ],
      ),
    );
  }
}

class TaijiWidget extends StatelessWidget {
  final double side;

  TaijiWidget(this.side);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(side, side),
      painter: TaijiPainter(),
    );
  }
}

class TaijiPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    double radius = min(width, height) / 2;

    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke
      ..color = Colors.grey[600];
    canvas.drawCircle(Offset(radius, radius), radius, paint);

    paint
      ..style = PaintingStyle.fill
      ..color = Colors.white;
    canvas.drawCircle(Offset(radius, radius), radius, paint);

    paint..color = Colors.black;
    Rect rect1 =
        Rect.fromCircle(center: Offset(radius, radius), radius: radius);
    canvas.drawArc(rect1, 0.0, pi, false, paint);

    canvas.drawCircle(Offset(radius + radius / 2, radius), radius / 2, paint);

    paint..color = Colors.white;
    canvas.drawCircle(Offset(radius / 2, radius), radius / 2, paint);

    canvas.drawCircle(Offset(radius + radius / 2, radius), radius / 10, paint);
    paint..color = Colors.black;
    canvas.drawCircle(Offset(radius / 2, radius), radius / 10, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
