import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

///@Author: leavesC
///@Date: 2020/11/4 16:02
///@Desc:
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
