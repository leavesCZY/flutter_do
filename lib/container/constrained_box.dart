/**
 * 作者：leavesC
 * 时间：2019/10/18 9:37
 * 描述：
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

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
