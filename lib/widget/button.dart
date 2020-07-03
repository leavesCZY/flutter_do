/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ButtonPage extends BaseDemoPage {
  ButtonPage() : super('Button', includeScrollView: false);

  void _onPressed(BuildContext context) {
    showSnackBar(context, "Click me");
  }

  @override
  Widget generateChildren(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                  RaisedButton(
                    child: Text("Click me"),
                    onPressed: () {
                      _onPressed(context);
                    },
                  ),
                  RaisedButton.icon(
                    label: Text("Click me"),
                    icon: Icon(Icons.insert_emoticon),
                    onPressed: () {
                      _onPressed(context);
                    },
                  ),
                  FlatButton(
                    child: Text("Click me"),
                    onPressed: () {
                      _onPressed(context);
                    },
                  ),
                  FlatButton.icon(
                    label: Text("Click me"),
                    icon: Icon(Icons.insert_emoticon),
                    onPressed: () {
                      _onPressed(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.toys),
                    color: Colors.green,
                    tooltip: "is IconButton",
                    onPressed: () {
                      _onPressed(context);
                    },
                  ),
                  OutlineButton(
                    child: Text("Click me"),
                    borderSide: BorderSide(color: Colors.amberAccent, width: 1),
                    highlightedBorderColor: Colors.green,
                    highlightColor: Colors.blue[600],
                    splashColor: Colors.transparent,
                    highlightElevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    onPressed: () {
                      _onPressed(context);
                    },
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(
                        child: Text("Click me"),
                        textColor: Colors.white,
                        color: Colors.blue[600],
                        highlightColor: Colors.blue[700],
                        splashColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          _onPressed(context);
                        },
                      ),
                    ),
                  )
                ])),
          )
        ],
      ),
    );
  }
}
