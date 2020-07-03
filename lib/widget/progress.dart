/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ProgressPage extends BaseDemoPage {
  ProgressPage() : super('Progress', includeScrollView: true);

  @override
  Widget generateChildren(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Padding(
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation(Colors.lightBlue),
            value: null,
          ),
          padding: EdgeInsets.all(30),
        ),
        Padding(
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation(Colors.lightBlue),
            value: 0.6,
          ),
          padding: EdgeInsets.all(30),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Padding(
            child: CircularProgressIndicator(
              strokeWidth: 4,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation(Colors.lightBlue),
            ),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Padding(
            child: CircularProgressIndicator(
              strokeWidth: 6,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation(Colors.lightBlue),
            ),
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          ),
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: Padding(
            child: CircularProgressIndicator(
              strokeWidth: 10,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation(Colors.lightBlue),
              value: 0.8,
            ),
            padding: EdgeInsets.all(20),
          ),
        ),
      ]),
    );
  }
}
