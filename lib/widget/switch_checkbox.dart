/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class SwitchCheckboxPage extends BaseDemoPage {
  SwitchCheckboxPage() : super('Switch Checkbox', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return _SwitchCheckboxWidget();
  }
}

class _SwitchCheckboxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwitchCheckboxState();
  }
}

class _SwitchCheckboxState extends State<_SwitchCheckboxWidget> {
  bool switchSelected = true;

  bool checkboxSelected = false;

  _SwitchCheckboxState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Switch(
                value: switchSelected,
                activeColor: Colors.blue[300],
                activeTrackColor: Colors.blue[500],
                inactiveThumbColor: Colors.grey[400],
                inactiveTrackColor: Colors.grey[600],
                onChanged: (value) {
                  setState(() {
                    switchSelected = value;
                  });
                },
              ),
              Text(switchSelected ? "选中" : "未选中"),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Checkbox(
                value: checkboxSelected,
                activeColor: Colors.red[200],
                checkColor: Colors.blue[500],
                onChanged: (value) {
                  setState(() {
                    checkboxSelected = value;
                  });
                },
              ),
              Text(checkboxSelected ? "选中" : "未选中"),
            ],
          ),
        ],
      ),
    );
  }
}
