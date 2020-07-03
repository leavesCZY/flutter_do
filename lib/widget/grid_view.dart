/**
 * 作者：leavesC
 * 时间：2019/10/16 12:10
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class SimpleGridViewPage extends BaseDemoPage {
  SimpleGridViewPage() : super('Simple GridView', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              children: _generateWidget(10, Colors.lightBlue)),
        ),
        Flexible(
          flex: 1,
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: _generateWidget(20, Colors.teal),
          ),
        ),
        Flexible(
          flex: 1,
          child: GridView.extent(
            maxCrossAxisExtent: 70,
            scrollDirection: Axis.horizontal,
            childAspectRatio: 1.0,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: _generateWidget(10, Colors.brown),
          ),
        ),
      ],
    );
  }

  List<Widget> _generateWidget(int size, Color color) {
    List list = new List<Widget>();
    for (int i = 0; i < size; i++) {
      list.add(Container(
        color: color,
      ));
    }
    return list;
  }
}

class GridViewPage extends BaseDemoPage {
  GridViewPage() : super('GridView', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return _GridView();
  }
}

class _GridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GridViewState();
  }
}

class _GridViewState extends State<_GridView> {
  static const MAX_SIZE = 150;

  var _dataList = <String>[];

  Color _black = Colors.black;

  Color _white = Colors.white;

  @override
  void initState() {
    super.initState();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
      ),
      itemCount: _dataList.length,
      itemBuilder: (BuildContext context, int index) {
        if (index == _dataList.length - 1) {
          if (_dataList.length < MAX_SIZE) {
            _generateData();
          }
        }
        return Container(
          height: 50,
          color: index % 2 == 0 ? _black : _white,
          child: Center(
            child: Text(
              "$index",
              style: TextStyle(color: index % 2 == 0 ? _white : _black),
            ),
          ),
        );
      },
    );
  }

  void _generateData() {
    Future.delayed(Duration(milliseconds: 400)).then((e) {
      setState(() {
        List<String> list = List<String>();
        for (int i = 0; i < 20; i++) {
          list.add((_dataList.length + i).toString());
        }
        _dataList.addAll(list);
      });
    });
  }
}
