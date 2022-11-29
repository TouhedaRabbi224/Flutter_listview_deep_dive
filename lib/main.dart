import 'package:flutter/material.dart';
import 'package:listview_widget/home.dart';

//import 'package:listview_widget/home.dart';

/*void main() {
  runApp(MaterialApp(
    title: 'flutter list view',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Deep-Dive List View'),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.view_list), label: 'Basic')
      ]),
    ),
  ));*/
/*void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final String title = 'List view Deep Dive';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(
        title: title,
      ),
    );
  }
}
