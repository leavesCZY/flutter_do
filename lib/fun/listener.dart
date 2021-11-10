import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

///@Author: leavesC
///@Date: 2020/11/4 16:00
///@Desc:
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
