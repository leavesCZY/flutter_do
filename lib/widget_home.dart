import 'package:flutter/material.dart';

import 'routes/route.dart';

///@Author: leavesC
///@Date: 2020/11/4 16:34
///@Desc:
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
      color: Colors.grey[200],
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
