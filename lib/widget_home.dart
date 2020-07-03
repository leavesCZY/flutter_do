/**
 * 作者：leavesC
 * 时间：2019/10/21 9:50
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'routes/route.dart';

Color bgColor = Colors.grey[200];

class WidgetHomePage extends StatefulWidget {
  final String category;

  WidgetHomePage(this.category);

  @override
  State<StatefulWidget> createState() {
    return _WidgetHomePageState(category);
  }
}

class _WidgetHomePageState extends State<WidgetHomePage> {
  final String category;

  _WidgetHomePageState(this.category);

  @override
  Widget build(BuildContext context) {
    return buildGridWidget();
  }

  Widget buildGridWidget() {
    var children = getWidgetList(category).children;
    return Container(
      color: bgColor,
      margin: EdgeInsets.only(top: 0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.88,
        ),
        itemCount: children.length,
        itemBuilder: (BuildContext context, int index) {
          double padding;
          if (index % 3 <= 1) {
            padding = 1.5;
          } else {
            padding = 0;
          }
          return GestureDetector(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.only(right: padding, bottom: 1.5),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      icons[children[index].routePath],
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${children[index].name}",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(children[index].routePath);
            },
          );
        },
      ),
    );
  }
}
