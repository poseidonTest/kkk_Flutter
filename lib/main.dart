import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> list=List.generate(50, (index) => "Item : $index");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(itemBuilder: (context,index){
          return ListTile(
            title: Text(list[index]),
            leading:Icon(Icons.add),
            trailing: Icon(Icons.delete),
          );
        }),
      ),
    );
  }
}