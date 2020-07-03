/**
 * 作者：leavesC
 * 时间：2019/10/18 10:04
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

class ContainerPage extends BaseDemoPage {
  ContainerPage() : super('Container', includeScrollView: false);

  @override
  Widget generateChildren(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/avatar.jpg")),
          ),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0x50039BE5), Color(0x90039BE5)],
            ),
          ),
          width: 200,
          height: 200,
          margin: EdgeInsets.all(20),
          transform: Matrix4.rotationZ(0.1),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image(
              image: AssetImage("assets/images/avatar.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
