import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';

///@Author: leavesC
///@Date: 2020/11/4 16:06
///@Desc:
const heroTag = "avatarHeroTag";

class HeroAnimationPage extends BaseDemoPage {
  HeroAnimationPage() : super("HeroAnimation");

  @override
  Widget generateChildren(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        child: Hero(
          tag: heroTag,
          child: Image.asset(
            "assets/images/avatar.jpg",
            width: 80,
          ),
        ),
        onTap: () {
          Navigator.push(context, PageRouteBuilder(pageBuilder:
              (BuildContext context, Animation animation,
                  Animation secondaryAnimation) {
            return HeroAnimation2Page(animation);
          }));
        },
      ),
    );
  }
}

class HeroAnimation2Page extends BaseDemoPage {
  final Animation animation;

  HeroAnimation2Page(this.animation) : super("HeroAnimation2");

  @override
  Widget generateChildren(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: Center(
        child: Hero(
          tag: heroTag,
          child: Image.asset("assets/images/avatar.jpg"),
        ),
      ),
    );
  }
}
