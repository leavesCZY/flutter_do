/**
 * 作者：leavesC
 * 时间：2019/10/17 16:39
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class DecoratedBoxPage extends BaseDemoPage {
  DecoratedBoxPage()
      : super('DecoratedBox', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: <Widget>[
          DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 3,
                    colors: [
                      Colors.blue,
                      Colors.orange[700],
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 4.0,
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Text(
                  "Hello World",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
