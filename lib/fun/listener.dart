/**
 * 作者：leavesC
 * 时间：2019/10/20 15:27
 * 描述：
 * GitHub：https://github.com/leavesC
 * Blog：https://www.jianshu.com/u/9df45b87cfdf
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ListenerPage extends BaseDemoPage {
  ListenerPage() : super('Listener', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return _ListenerWidget();
  }
}

class _ListenerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListenerWidgetState();
  }
}

class _ListenerWidgetState extends State<_ListenerWidget> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    void refreshEvent(event) {
      setState(() => _event = event);
    }

    return Listener(
      child: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.lightBlue,
          width: 400,
          height: 400,
          child: Text(_event?.toString() ?? "",
              style: TextStyle(color: Colors.white)),
        ),
      ),
      onPointerDown: (PointerDownEvent event) => refreshEvent(event),
      onPointerMove: (PointerMoveEvent event) => refreshEvent(event),
      onPointerUp: (PointerUpEvent event) => refreshEvent(event),
    );
  }
}
