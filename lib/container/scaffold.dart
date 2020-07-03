/**
 * 作者：leavesC
 * 时间：2019/10/18 10:45
 * 描述：
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScaffoldPageState();
  }
}

class _ScaffoldPageState extends State<ScaffoldPage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  TabController _tabController;

  List _tabs = ["Message", "Contacts", "Settings"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: false,
        elevation: 10,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        bottom: TabBar(
            isScrollable: false,
            controller: _tabController,
            tabs: _tabs.map((e) => Tab(text: e)).toList()),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabs.map((e) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              e,
              textScaleFactor: 3,
            ),
          );
        }).toList(),
      ),
      drawer: new DrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Message'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('Contacts'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: (index) {
          _tabController.animateTo(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.share),
        onPressed: () {},
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/avatar.jpg",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "leavesC",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: const Text('Location'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.mouse),
                    title: const Text('Mouse'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.perm_device_information),
                    title: const Text('Device'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
