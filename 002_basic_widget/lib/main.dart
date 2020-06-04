import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(),
          body: ScrollTest(),
        ));
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

/// SingleChildScrollView
class ScrollTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: ContainerTest());
  }
}

/// Container
class ContainerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(2),
      child: ColumnTest(),
    );
  }
}

/// Column
class ColumnTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.blue),
        Container(width: 100, height: 100, color: Colors.green),
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.blue),
        Container(width: 100, height: 100, color: Colors.green),
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.blue),
        Container(width: 100, height: 100, color: Colors.green),
        RowTest(),
      ],
      crossAxisAlignment: CrossAxisAlignment.end,
    );
  }
}

/// Row
class RowTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.blue),
        Container(width: 100, height: 100, color: Colors.green),
        StackTest()
      ],
    );
  }
}

/// Stack
class StackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text('test_1'),
        Text('1test_2'),
        Text('3test_3'),
      ],
    );
  }
}

/// ListView
class ListViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListTile(
          title: Text('test'),
        ),
        ListTile(
          title: Text('test3'),
        ),
        ListTile(
          title: Text('test2'),
        ),
      ],
    );
  }
}

/// GridView
class GridViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Container(color: Colors.black),
        Container(color: Colors.red),
        Container(color: Colors.blueGrey),
        Container(color: Colors.black),
      ],
    );
  }
}

/// PageView
class PageViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blue),
      ],
    );
  }
}
