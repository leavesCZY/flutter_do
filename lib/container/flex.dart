/**
 * 作者：leavesC
 * 时间：2019/10/16 0:15
 * 描述：
 * GitHub：https://github.com/leavesC
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class FlexExpandedPage extends BaseDemoPage {
  FlexExpandedPage() : super('Flex', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _FlexExpandedWidget(
                Colors.lightBlue[500],
                Colors.lightBlue[400],
                2,
                10,
              ),
              _FlexExpandedWidget(
                Colors.deepOrange[500],
                Colors.deepOrange[400],
                4,
                10,
              ),
              _FlexExpandedWidget(
                Colors.teal[500],
                Colors.teal[400],
                6,
                10,
              ),
              _FlexExpandedWidget(
                Colors.brown[500],
                Colors.brown[400],
                8,
                10,
              ),
              _FlexExpandedWidget(
                Colors.deepPurple[500],
                Colors.deepPurple[400],
                10,
                10,
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 12,
                    child: Container(
                      height: 60.0,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

class _FlexExpandedWidget extends StatelessWidget {
  final Color color1;

  final Color color2;

  final int flex1;

  final int flex2;

  _FlexExpandedWidget(this.color1, this.color2, this.flex1, this.flex2);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
          flex: flex1,
          child: Container(
            height: 60.0,
            color: color1,
          ),
        ),
        Expanded(
          flex: flex2,
          child: Container(
            height: 60.0,
            color: color2,
          ),
        ),
      ],
    );
  }
}
