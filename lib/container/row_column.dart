/**
 * 作者：leavesC
 * 时间：2019/10/15 17:39
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class RowColumnPage extends BaseDemoPage {
  RowColumnPage() : super('Row Column');

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.start),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.end),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.center),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.spaceBetween),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.spaceAround),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.spaceEvenly),
            ],
          ),
          Container(
            color: Colors.deepOrange[200],
            width: null,
            height: 50.0,
          ),
          Column(
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.start),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.end),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.center),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.spaceBetween),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.spaceAround),
              SizedBox(height: 10.0),
              RowMainAxisAlignment(MainAxisAlignment.spaceEvenly),
            ],
          ),
        ]);
  }
}

class RowMainAxisAlignment extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;

  const RowMainAxisAlignment(this.mainAxisAlignment) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: <Widget>[
        Container(
          color: Colors.lightBlueAccent[100],
          width: 80.0,
          height: 50.0,
        ),
        Container(
          color: Colors.lightBlueAccent[200],
          width: 80.0,
          height: 50.0,
        ),
        Container(
          color: Colors.lightBlueAccent[400],
          width: 80.0,
          height: 50.0,
        ),
      ],
    );
  }
}
