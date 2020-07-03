/**
 * 作者：leavesC
 * 时间：2019/10/17 16:57
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class TransformPage extends BaseDemoPage {
  TransformPage() : super('Transform');

  @override
  Widget generateChildren(BuildContext context) {
    return Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
          SizedBox(
            height: 100,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Transform.translate(
              offset: Offset(-20, -20),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.lightBlue,
                child: Transform.translate(
                  offset: Offset(-20, -20),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Transform.rotate(
              angle: 45,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.lightBlue,
                child: Transform.rotate(
                  angle: 45,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              GestureDetector(
                child: Text("I am leavesC"),
                onTap: () {
                  print("I am leavesC");
                },
              ),
              GestureDetector(
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text("Hello world"),
                ),
                onTap: () {
                  print("Hello world");
                },
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Transform.scale(
                scale: 0.5,
                child: Container(
                  color: Colors.lightBlue,
                  width: 100,
                  height: 100,
                )),
          ),
          SizedBox(
            height: 100,
          ),
        ]));
  }
}
