import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
        // indicatorColor: Colors.red//cuma bagian bawah
        indicator: BoxDecoration(
            color: Colors.red,
            border: Border(top: BorderSide(color: Colors.purple, width: 5))),
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.comment),
            text: "comment",
          ),
          Tab(
            icon: Icon(Icons.computer),
          ),
        ]);
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("contoh tab bar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.amber, child: myTabBar)),
          ),
          body: TabBarView(children: <Widget>[
            Center(
              child: Text("tab 1"),
            ),
            Center(
              child: Text("tab 2"),
            ),
          ]),
        ),
      ),
    );
  }
}
