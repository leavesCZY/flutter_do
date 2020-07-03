/**
 * 作者：leavesC
 * 时间：2019/10/19 21:46
 * 描述：
 * GitHub：https://github.com/leavesC
 * Blog：https://www.jianshu.com/u/9df45b87cfdf
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ClipPage extends BaseDemoPage {
  ClipPage() : super('Clip');

  @override
  Widget generateChildren(BuildContext context) {
    Widget avatar = Image.asset("assets/images/avatar.jpg", width: 300.0);
    return Center(
      child: Column(
        children: <Widget>[
          avatar,
          SizedBox(
            height: 50,
          ),
          ClipOval(child: avatar),
          SizedBox(
            height: 50,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: avatar,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                widthFactor: 0.5,
                child: avatar,
              ),
              Text(
                "ClipRect ~~",
                style: TextStyle(
                  color: Colors.lightBlue,
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRect(
                child: Align(
                  alignment: Alignment.topLeft,
                  widthFactor: 0.5,
                  child: avatar,
                ),
              ),
              Text(
                "ClipRect ~~",
                style: TextStyle(color: Colors.lightBlue),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ClipRect(
            clipper: LeftTopClipper(150, 150),
            child: avatar,
          ),
          SizedBox(
            height: 50,
          ),
          ClipRect(
            clipper: LeftTopClipper(250, 250),
            child: avatar,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class LeftTopClipper extends CustomClipper<Rect> {
  final double width;

  final double height;

  LeftTopClipper(this.width, this.height);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, width, height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
