/**
 * 作者：leavesC
 * 时间：2019/10/17 16:19
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class StackPage extends BaseDemoPage {
  StackPage() : super('Stack', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            color: Colors.teal,
            width: 100,
            height: 100,
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              color: Colors.lightBlue,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: Container(
              color: Colors.brown,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              color: Colors.indigo,
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
