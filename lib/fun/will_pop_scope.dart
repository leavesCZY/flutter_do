import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@Author: leavesC
///@Date: 2020/11/4 15:59
///@Desc:
class WillPopScopePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScopeWidget(
      MaterialApp(
          title: "WillPopScope",
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text("WillPopScope"),
            ),
            body: Center(
              child: Text("1秒内连续按两次返回键将退出页面"),
            ),
          )),
    );
  }
}

class WillPopScopeWidget extends StatefulWidget {
  final Widget child;

  WillPopScopeWidget(this.child);

  @override
  State<StatefulWidget> createState() {
    return WillPopScopePageState(child);
  }
}

class WillPopScopePageState extends State<WillPopScopeWidget> {
  final Widget child;

  DateTime _lastPressedAt;

  WillPopScopePageState(this.child);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) >
                  Duration(seconds: 1)) {
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        },
        child: child);
  }
}
