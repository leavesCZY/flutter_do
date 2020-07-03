/**
 * 作者：leavesC
 * 时间：2019/10/16 10:57
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class WrapPage extends BaseDemoPage {
  WrapPage() : super('Wrap');

  @override
  Widget generateChildren(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          WrapAlignmentWidget(WrapAlignment.start),
          WrapAlignmentWidget(WrapAlignment.end),
          WrapAlignmentWidget(WrapAlignment.center),
          WrapAlignmentWidget(WrapAlignment.spaceBetween),
          WrapAlignmentWidget(WrapAlignment.spaceAround),
          WrapAlignmentWidget(WrapAlignment.spaceEvenly),
        ],
      ),
    );
  }
}

class WrapAlignmentWidget extends StatelessWidget {
  final WrapAlignment wrapAlignment;

  const WrapAlignmentWidget(this.wrapAlignment) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          alignment: wrapAlignment,
          children: <Widget>[
            Container(
              color: Colors.blue[800],
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.blue[800],
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.blue[800],
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.blue[800],
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.blue[800],
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.blue[800],
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.blue[800],
              width: 80.0,
              height: 80.0,
            ),
          ],
        ),
        Align(
          widthFactor: 1.2,
          heightFactor: 1.2,
          child: Text(wrapAlignment.toString()),
        ),
      ],
    );
  }
}
