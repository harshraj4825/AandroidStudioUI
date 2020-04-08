import 'package:flutter/material.dart';

import 'app_screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter NestedTabs Demo',
      theme: ThemeData(
        primaryColor: Color(0xffffffff)
      ),
      home: HomePage(),
    );
  }
}
