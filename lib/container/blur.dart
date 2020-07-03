import 'dart:ui';

/**
 * 作者：leavesC
 * 时间：2019/10/22 17:11
 * 描述：
 */
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class BlurPage extends BaseDemoPage {
  BlurPage() : super("BlurPage", includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Image.asset(
              "assets/images/avatar.jpg",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Center(
                    child: Text("Flutter Do"),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BlurRectWidget extends StatelessWidget {
  final Widget _widget;
  double _padding = 10;

  BlurRectWidget(this._widget, {double padding = 0}) {
    if (padding != 0) this._padding = padding;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
//      margin: EdgeInsets.symmetric(horizontal: 50),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),
          child: Container(
            color: Colors.white10,
            padding: EdgeInsets.all(_padding),
            child: _widget,
          ),
        ),
      ),
    );
  }
}
