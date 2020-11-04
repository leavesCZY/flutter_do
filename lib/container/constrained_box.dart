import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

///@Author: leavesC
///@Date: 2020/11/4 16:04
///@Desc:
class ConstrainedBoxPage extends BaseDemoPage {
  ConstrainedBoxPage() : super('ConstrainedBox');

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            minHeight: 80,
          ),
          child: Container(
            width: 40,
            height: 40,
            color: Colors.lightBlue,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        SizedBox(
          width: double.infinity,
          height: 80,
          child: Container(
            width: 40,
            height: 40,
            color: Colors.lightBlue,
          ),
        ),
      ],
    );
  }
}
