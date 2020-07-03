/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

const url =
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571395288485&di=d475ea9a1c8920f291e1b65d60e46f58&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw640h380%2F20171224%2F4873-fypvuqf5294484.jpg";

class ImagePage extends BaseDemoPage {
  ImagePage() : super('Image');

  @override
  Widget generateChildren(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Column(
              children: <Widget>[
            _ImageWithTipWidget(
                Image.asset(
                  "assets/images/avatar.jpg",
                ),
                "本地资源图片"),
            _getImage(null, null, color: null, tip: "网络图片"),
          ]..addAll(_getImageListWithBlendMode())),
        ),
        Flexible(
          flex: 1,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _ImageWithTipWidget(
                    Image.asset(
                      "assets/images/avatar.jpg",
                    ),
                    "本地资源图片"),
                _getImage(null, null, color: null, tip: "网络图片"),
              ]..addAll(_getImageListWithFit())),
        ),
      ],
    );
  }
}

List<Widget> _getImageListWithBlendMode() {
  return BlendMode.values.reversed.map((element) {
    return _getImage(element, null);
  }).toList();
}

List<Widget> _getImageListWithFit() {
  return BoxFit.values.reversed.map((element) {
    return _getImage(null, element, color: null);
  }).toList();
}

Widget _getImage(BlendMode colorBlendMode, BoxFit fit,
    {Color color = Colors.blue, String tip}) {
  return _ImageWithTipWidget(
      Image.network(
        url,
        color: color,
        fit: fit,
        colorBlendMode: colorBlendMode,
      ),
      tip ?? colorBlendMode?.toString() ?? fit?.toString() ?? "");
}

class _ImageWithTipWidget extends StatelessWidget {
  final String tip;

  final Widget widget;

  _ImageWithTipWidget(this.widget, this.tip);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 80,
              height: 80,
              child: widget,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              tip,
              style: TextStyle(color: Colors.black, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
