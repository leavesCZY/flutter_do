/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/routes/route.dart';

import 'routes/route.dart';
import 'widget_home.dart';

void main() => runApp(MainApp());

const title = "Flutter Do";

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      onGenerateRoute: _generateRoute,
    );
  }
}

MaterialPageRoute _generateRoute(RouteSettings settings) {
  return MaterialPageRoute(
      builder: (BuildContext context) {
        return pathToWidgetMap.firstWhere((element) {
          return element.containsKey(settings.name);
        })[settings.name];
      },
      settings: settings);
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final List<String> _tabs = getAllCategory();

  List<Widget> _children;

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {});
    _children = _buildTabHomePage();
  }

  List<Widget> _buildTabHomePage() {
    List<Widget> list = [];
    var categoryList = getAllCategory();
    categoryList.forEach((bean) {
      list.add(WidgetHomePage(bean));
    });
    return list;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 10,
        bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: _tabs.map((e) => Tab(text: e)).toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _children,
      ),
    );
  }
}
