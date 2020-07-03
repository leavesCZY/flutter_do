/**
 * 作者：leavesC
 * 时间：2019/10/16 0:15
 * 描述：
 * GitHub：https://github.com/leavesC
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class PaddingPage extends BaseDemoPage {
  PaddingPage() : super('Padding');

  @override
  Widget generateChildren(BuildContext context) {
    return Column(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[600],
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  color: Colors.red[400],
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.brown[400],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[600],
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  color: Colors.red[400],
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.brown[400],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[600],
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  color: Colors.red[400],
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.brown[400],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[600],
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  color: Colors.red[400],
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.brown[400],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[600],
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  color: Colors.red[400],
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.brown[400],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[600],
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  color: Colors.red[400],
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.brown[400],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ]);
  }
}
