import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> list = List.generate(50, (index) => "Item : $index");
  List<Widget> _widgetList = [];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < list.length; i++) {
      _widgetList.add(Text("othe item : ${list[i]}"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          children: _widgetList,
        )
      ),
    );
  }
}
