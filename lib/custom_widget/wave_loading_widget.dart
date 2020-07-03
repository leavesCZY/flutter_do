/**
 * 作者：leavesC
 * 时间：2019/10/22 22:10
 * 描述：
 * GitHub：https://github.com/leavesC
 * Blog：https://www.jianshu.com/u/9df45b87cfdf
 */

import 'dart:math';
import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class WaveLoadingWidgetPage extends BaseDemoPage {
  WaveLoadingWidgetPage() : super("WaveLoadingWidget", includeScrollView: true);

  @override
  Widget generateChildren(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            child: WaveLoadingWidget(
              text: "锲",
              fontSize: 215,
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              waveColor: Colors.lightBlue,
            ),
          ),
          Container(
            width: 250,
            height: 250,
            child: WaveLoadingWidget(
              text: "而",
              fontSize: 175,
              backgroundColor: Colors.indigoAccent,
              foregroundColor: Colors.white,
              waveColor: Colors.indigoAccent,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            child: WaveLoadingWidget(
              text: "不",
              fontSize: 145,
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.lightBlue,
              waveColor: Colors.redAccent,
            ),
          ),
          Container(
            width: 150,
            height: 150,
            child: WaveLoadingWidget(
              text: "舍",
              fontSize: 125,
              backgroundColor: Colors.amber,
              foregroundColor: Colors.brown,
              waveColor: Colors.amberAccent,
            ),
          ),
        ],
      ),
    );
  }
}

class WaveLoadingWidget extends StatefulWidget {
  final String text;

  final double fontSize;

  final Color backgroundColor;

  final Color foregroundColor;

  final Color waveColor;

  WaveLoadingWidget(
      {@required this.text,
      @required this.fontSize,
      @required this.backgroundColor,
      @required this.foregroundColor,
      @required this.waveColor}) {
    assert(text != null && text.length == 1);
    assert(fontSize != null && fontSize > 0);
  }

  @override
  _WaveLoadingWidgetState createState() => _WaveLoadingWidgetState(
        text: text,
        fontSize: fontSize,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        waveColor: waveColor,
      );
}

class _WaveLoadingWidgetState extends State<WaveLoadingWidget>
    with SingleTickerProviderStateMixin {
  final String text;

  final double fontSize;

  final Color backgroundColor;

  final Color foregroundColor;

  final Color waveColor;

  AnimationController controller;

  Animation<double> animation;

  _WaveLoadingWidgetState(
      {@required this.text,
      @required this.fontSize,
      @required this.backgroundColor,
      @required this.foregroundColor,
      @required this.waveColor});

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    controller.addStatusListener((status) {
      switch (status) {
        case AnimationStatus.dismissed:
          print("dismissed");
          break;
        case AnimationStatus.forward:
          print("forward");
          break;
        case AnimationStatus.reverse:
          print("reverse");
          break;
        case AnimationStatus.completed:
          print("completed");
          break;
      }
    });

    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller)
      ..addListener(() {
        setState(() => {});
      });
    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WaveLoadingPainter(
        text: text,
        fontSize: fontSize,
        animatedValue: animation.value,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        waveColor: waveColor,
      ),
    );
  }
}

class WaveLoadingPainter extends CustomPainter {
  //如果外部没有指定颜色值，则使用此默认颜色值
  static final Color defaultColor = Colors.lightBlue;

  //画笔对象
  var _paint = Paint();

  //圆形路径
  Path _circlePath = Path();

  //波浪路径
  Path _wavePath = Path();

  //要显示的文本
  final String text;

  //字体大小
  final double fontSize;

  final double animatedValue;

  final Color backgroundColor;

  final Color foregroundColor;

  final Color waveColor;

  WaveLoadingPainter(
      {this.text,
      this.fontSize,
      this.animatedValue,
      this.backgroundColor,
      this.foregroundColor,
      this.waveColor}) {
    _paint
      ..isAntiAlias = true
      ..style = PaintingStyle.fill
      ..strokeWidth = 3
      ..color = waveColor ?? defaultColor;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double side = min(size.width, size.height);
    double radius = side / 2.0;

    _drawText(canvas: canvas, side: side, colors: backgroundColor);

    _circlePath.reset();
    _circlePath.addArc(Rect.fromLTWH(0, 0, side, side), 0, 2 * pi);

    double waveWidth = side * 0.8;
    double waveHeight = side / 6;
    _wavePath.reset();
    _wavePath.moveTo((animatedValue - 1) * waveWidth, radius);
    for (double i = -waveWidth; i < side; i += waveWidth) {
      _wavePath.relativeQuadraticBezierTo(
          waveWidth / 4, -waveHeight, waveWidth / 2, 0);
      _wavePath.relativeQuadraticBezierTo(
          waveWidth / 4, waveHeight, waveWidth / 2, 0);
    }
    _wavePath.relativeLineTo(0, radius);
    _wavePath.lineTo(-waveWidth, side);
    _wavePath.close();

    var combine = Path.combine(PathOperation.intersect, _circlePath, _wavePath);
    canvas.drawPath(combine, _paint);

    canvas.clipPath(combine);
    _drawText(canvas: canvas, side: side, colors: foregroundColor);
  }

  void _drawText({Canvas canvas, double side, Color colors}) {
    ParagraphBuilder pb = ParagraphBuilder(ParagraphStyle(
      textAlign: TextAlign.center,
      fontStyle: FontStyle.normal,
      fontSize: fontSize ?? 0,
    ));
    pb.pushStyle(ui.TextStyle(color: colors ?? defaultColor));
    pb.addText(text);
    ParagraphConstraints pc = ParagraphConstraints(width: fontSize ?? 0);
    Paragraph paragraph = pb.build()..layout(pc);
    canvas.drawParagraph(
        paragraph,
        Offset(
            (side - paragraph.width) / 2.0, (side - paragraph.height) / 2.0));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
