/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class InputPage extends BaseDemoPage {
  InputPage() : super('Input');

  @override
  Widget generateChildren(BuildContext context) {
    return _InputWidget();
  }
}

class _InputWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputWidgetState();
  }
}

class _InputWidgetState extends State<_InputWidget> {
  String account = "";

  String pwd = "";

  String focusHint = "";

  var _labelStyle = TextStyle(color: Colors.black, fontSize: 14);

  var _hintStyle = TextStyle(color: Colors.grey, fontSize: 14);

  TextEditingController _accountController = TextEditingController()
    ..text = "18888888888"
    ..selection = TextSelection(baseOffset: 1, extentOffset: 3);

  FocusNode _accountFocusNode = new FocusNode();

  FocusNode _pwdFocusNode = new FocusNode();

  @override
  void initState() {
    super.initState();
    _accountFocusNode.addListener(() {
      _focusChanged("账号输入框获焦点: " + _accountFocusNode.hasFocus.toString());
    });
  }

  void _focusChanged(String hint) {
    setState(() {
      focusHint = hint;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            focusNode: _accountFocusNode,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            maxLength: 11,
            maxLines: 1,
            decoration: InputDecoration(
                labelText: "账号",
                labelStyle: _labelStyle,
                hintText: "请输入手机号码",
                hintStyle: _hintStyle,
                prefixIcon: Icon(Icons.perm_phone_msg)),
            controller: _accountController,
          ),
          TextField(
            autofocus: true,
            focusNode: _pwdFocusNode,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.go,
            maxLength: 11,
            maxLines: 1,
            showCursor: true,
            cursorColor: Colors.deepOrange,
            decoration: InputDecoration(
                labelText: "验证码",
                labelStyle: _labelStyle,
                hintText: "请输入验证码",
                hintStyle: _hintStyle,
                prefixIcon: Icon(Icons.notifications_paused)),
            onChanged: (value) {
              setState(() {
                pwd = value;
              });
            },
          ),
          Text("验证码：$pwd"),
          Text("$focusHint"),
          RaisedButton(
            child: Text("移动焦点"),
            onPressed: () {
              if (_accountFocusNode.hasFocus) {
                _pwdFocusNode.requestFocus();
              } else {
                _accountFocusNode.requestFocus();
              }
            },
          ),
          RaisedButton(
            child: Text("隐藏键盘"),
            onPressed: () {
              _accountFocusNode.unfocus();
              _pwdFocusNode.unfocus();
            },
          )
        ],
      ),
    );
  }
}
